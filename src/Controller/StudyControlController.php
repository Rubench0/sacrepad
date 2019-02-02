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
	 * @Route("/studycontrol/facilitator/new", name="studycontrol_facilitator_new", methods={"POST"})
	 */
	public function FacilitatorRegistry(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'Error al crear usuario.',
	 		);

	 		if ($form != null) {
	 			$createdAt = new \Datetime('now');
	 			$identity = $jwtauth->checkToken($token, true);

	 			$login = (isset($form->login)) ? $form->login : null;
	 			$password = (isset($form->password)) ? $form->password : null;
	 			$email = (isset($form->email)) ? $form->email : null;
	 			$rol = (isset($form->rol)) ? $form->rol : null;
	 			$type = (isset($form->type)) ? $form->type : null;
	 			$name = (isset($form->name)) ? $form->name : null;
	 			$name2 = (isset($form->name2)) ? $form->name2 : null;
	 			$surname = (isset($form->surname)) ? $form->surname : null;
	 			$surname2 = (isset($form->surname2)) ? $form->surname2 : null;
	 			$phone = (isset($form->phone)) ? $form->phone : null;
	 			$identification = (isset($form->identification)) ? $form->identification : null;
	 			$profession = (isset($form->profession)) ? $form->profession : null;

	 			$emailConstraint = new Assert\Email();
				$emailConstraint->message = 'El email no es valido';
				$validate_email = $validator->validate($email, $emailConstraint);

				if ($email != null && count($validate_email) == 0 && $password != null && $name != null && $surname != null && $rol != null && $login != null && $phone != null) {

					$em = $this->getDoctrine()->getManager();
					$User = new User();
					switch ($type) {
						case '1':
							$Userdata = new UserData();
							$Userdata->setName($name);
							$Userdata->setSurname($surname);
							$Userdata->setPhone($phone);
							$em->persist($Userdata);
				    		$em->flush();
							$User->setUserData($Userdata);
							$helpers->binnacleAction('UserData','registro',$createdAt,'Agregando datos de usuario para la relación con usuario.',$identity->id);
							break;
						case '2':
							$Facilitator = new Facilitator();
							$Facilitator->setIdentification($identification);
							$Facilitator->setName($name);
							$Facilitator->setSurname($surname);
							$Facilitator->setEmail($email);
							$Facilitator->setPhone($phone);
							$Facilitator->setProfession($profession);
							$Facilitator->setCreateTime($createdAt);
							$user_id = $em->getRepository(User::class)->findOneById($identity->id);
							$Facilitator->setUser($user_id);
							$em->persist($Facilitator);
				    		$em->flush();
							$User->setFacilitator($Facilitator);
							$helpers->binnacleAction('Facilitator','registro',$createdAt,'Agregando datos de usuario facilitador.',$identity->id);
							break;
						case '3':
							$Student = new Student();
							$Student->setIdentification($identification);
							$Student->setName($name);
							$Student->setName2($name2);
							$Student->setSurname($surname);
							$Student->setSurname2($surname2);
							$Student->setEmail($email);
							$Student->setPhone($phone);
							$Student->setAdmitted(0);
							$Student->setCreateTime($createdAt);
							$user_id = $em->getRepository(User::class)->findOneById($identity->id);
							$Student->setUser($user_id);
							$em->persist($Student);
				    		$em->flush();
							$User->setStudent($Student);
							$helpers->binnacleAction('Student','registro',$createdAt,'Agregando datos de usuario estudiante.',$identity->id);
							break;
					}
					$User->setLogin($login);
					$password = hash('sha256', $password);
					$User->setPassword($password);
					$User->setEmail($email); 
					$User->setIsActive(1);
					$User->setRole($rol);
					$User->setCreateTime($createdAt);

					$isset_user = $em->getRepository(User::class)->findBy(array('login' => $login));
					if (count($isset_user) == 0) {
						$em->persist($User);
		    			$em->flush();
		    			$helpers->binnacleAction('User','registro',$createdAt,'Agregando usuario.',$identity->id);
						$response = array(
							'status' => 'success',
							'code' => 200,
							'msg' => 'Usuario creado.',
							'user' => $User
			 			);
					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El usuario ya se encuentra registrado.',
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
			
}


