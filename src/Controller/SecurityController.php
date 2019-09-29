<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Service\Helpers;
use App\Service\JwtAuth;
use App\Entity\BinnacleActions;
use App\Entity\BinnacleAccessUser;


class SecurityController extends AbstractController
{
	/**
	 * @Route("/login", name="login", methods={"POST"})
	 */
	public function login(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$data = array(
			'status' => 'error',
			'code' => 400,
			'msg' => 'Datos no recibidos'
		);

		$json = $request->request->get('json');
		if ($json != null) {
			$params = json_decode($json);
			$email = (isset($params->email)) ? $params->email : null;
			$password = (isset($params->password)) ? $params->password : null;
			$getHash = (isset($params->getHash)) ? $params->getHash : null;
			$pwd = hash('sha256', $password);
			if ($getHash == null || $getHash == false) {
				$singup = $jwtauth->singup($email, $pwd);
			} else {
				$singup = $jwtauth->singup($email, $pwd, true);
			}
			return $helpers->json($singup);

		}
		return $helpers->json($data);
	}

	/**
	 * @Route("/security/binnacle/actions", name="security_binnacle_actions", methods={"POST"})
	 */
	public function binnacleActions(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(BinnacleActions::class)->findAll();
			foreach ($users as $key => $value) {
				$user = $users[$key]->getUser() ? $users[$key]->getUser()->getLogin() : 'N/R';
				$data[] = [
					'id' => $users[$key]->getId(),
					'user' => $user,
					'model' => $users[$key]->getEntity(),
					'action' => $users[$key]->getAction(),
					'date' => $users[$key]->getDate(),
					'description' => $users[$key]->getDescription(),
				];
			}
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}

	/**
	 * @Route("/security/binnacle/access", name="security_binnacle_access", methods={"POST"})
	 */
	public function binnacleAccess(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$createdAt = new \Datetime('now');
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$binnacles =  $em->getRepository(BinnacleAccessUser::class)->findAll();
			foreach ($binnacles as $key => $value) {
				$data[] = [
					'id' => $binnacles[$key]->getId(),
					'date' => $binnacles[$key]->getDate(),
					'so' => $binnacles[$key]->getSystem(),
					'device' => $binnacles[$key]->getDevice(),
					'adress' => $binnacles[$key]->getAdreess(),
					'user' => $binnacles[$key]->getUser()->getLogin(),
				];
			}
			$helpers->binnacleAction('BinnacleAccessUser','consulta',$createdAt,'Consulta de registros de acceso.',$identity->id);
			$response = array(
				'status' => 'success',
				'code' => 200,
				'data' => $data,
			);
		} else {
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);
	}
}
