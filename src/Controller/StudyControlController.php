<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Service\Helpers;
use App\Service\JwtAuth;
use App\Entity\User;
use App\Entity\Student;
use App\Entity\Facilitator;


class StudyControlController extends AbstractController {
	

	/**
	 * @Route("/studycontrol/facilitators", name="studycontrol_view_facilitators", methods={"POST"})
	 */
	public function facilitatorsAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(User::class)->findAll();
			foreach ($users as $key => $value) {
				if ($users[$key]->getFacilitator()) {
					$data[] = [
						'id' => $users[$key]->getId(),
						'name' => $users[$key]->getFacilitator()->getName(),
						'surname' => $users[$key]->getFacilitator()->getSurname(),
					];
				}
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando lista de facilitadores.',$identity->id);
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
	 * @Route("/studycontrol/students", name="studycontrol_view_students", methods={"POST"})
	 */
	public function studentsAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(User::class)->findAll();
			foreach ($users as $key => $value) {
				if ($users[$key]->getStudent()) {
					$data[] = [
						'id' => $users[$key]->getId(),
						'name' => $users[$key]->getStudent()->getName(),
						'surname' => $users[$key]->getStudent()->getSurname(),
						'identification' => $users[$key]->getStudent()->getIdentification(),
					];
				}
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando lista de estudiantes.',$identity->id);
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


