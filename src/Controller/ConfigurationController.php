<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use App\Service\Helpers;
use App\Service\JwtAuth;
use App\Entity\NDays;
use App\Entity\User;


class ConfigurationController extends AbstractController {
	
	/**
	 * @Route("/configuration/days/new", name="configuration_days_new", methods={"POST"})
	 */
	public function DaysRegistry(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'El formulario no puede estar vació.',
	 		);

	 		if ($form != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

	 			$name = (isset($form->name)) ? $form->name : null;

				if ($name != null) {
					$em = $this->getDoctrine()->getManager();
					$isset_day = $em->getRepository(NDays::class)->findBy(array('day' => $name));
					if (count($isset_day) == 0) {
						$NDays = new NDays();
						$NDays->setDay($name);
						$NDays->setCreateTime($createdAt);
						$user = $em->getRepository(User::class)->findOneById($identity->id);
						$NDays->setUser($user);
						$em->persist($NDays);
		    			$em->flush();
		    			$helpers->binnacleAction('NDays','registro',$createdAt,'Registrando día en el modulo configuración.',$identity->id);
						$response = array(
							'status' => 'success',
							'code' => 200,
							'msg' => 'Registro creado exitosamente.',
			 			);
					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El registro ya se encuentra en base de datos.',
	 					);
					}
				}
	 		
	 		}
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
	 * @Route("/configuration/days", name="configuration_view_days", methods={"POST"})
	 */
	public function DaysView(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$days =  $em->getRepository(NDays::class)->findAll();
			foreach ($days as $key => $value) {
				$data[] = [
					'id' => $days[$key]->getId(),
					'name' => $days[$key]->getDay(),
				];
			}
			$helpers->binnacleAction('NDays','consulta',$createdAt,'Consultando lista de dias.',$identity->id);
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


