<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Service\Helpers;
use App\Service\JwtAuth;
use App\Entity\Users;
use App\Entity\UserData;


class UsersController extends AbstractController {
	
	/**
	 * @Route("/user/new", name="user_new", methods={"POST"})
	 */
	public function UserRegistry(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$json = $request->request->get('form');
			$form = json_decode($json);

			$response = array(
				'status' => 'Error',
				'code' => 400,
				'msg' => 'Error al crear usuario.',
	 		);

	 		if ($json != null) {
	 			$createdAt = new \Datetime('now');

	 			$login = (isset($form->login)) ? $form->login : null;
	 			$password = (isset($form->password)) ? $form->password : null;
	 			$email = (isset($form->email)) ? $form->email : null;
	 			$rol = (isset($form->rol)) ? $form->rol : null;
	 			$name = (isset($form->name)) ? $form->name : null;
	 			$surname = (isset($form->surname)) ? $form->surname : null;
	 			$phone = (isset($form->phone)) ? $form->phone : null;

	 			$emailConstraint = new Assert\Email();
				$emailConstraint->message = 'El email no es valido';
				$validate_email = $validator->validate($email, $emailConstraint);

				if ($email != null && count($validate_email) == 0 && $password != null && $name != null && $surname != null && $rol != null && $login != null && $phone != null) {

					$em = $this->getDoctrine()->getManager();
					$Userdata = new UserData();
					$Userdata->setName($name);
					$Userdata->setSurname($surname);
					$Userdata->setPhone($phone);
					$em->persist($Userdata);
		    		$em->flush();
					$User = new Users();
					$User->setLogin($login);
					$password = hash('sha256', $password);
					$User->setPassword($password);
					$User->setEmail($email); 
					$User->setIsActive(1);
					$User->setRole($rol);
					$User->setIdUserData($Userdata);

					$isset_user = $em->getRepository(Users::class)->findBy(array('login' => $login));
					if (count($isset_user) == 0) {
						$em->persist($User);
		    			$em->flush();
						$response = array(
							'status' => 'Success',
							'code' => 200,
							'msg' => 'Usuario creado.',
							'user' => $User
			 			);
					} else {
						$response = array(
							'status' => 'Error',
							'code' => 400,
							'msg' => 'El usuario se encuentra registrado.',
	 					);
					}
				}
	 		
	 		}
		} else {
			$response = array(
				'status' => 'Error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}
		return $helpers->json($response);
	}

	/**
	 * @Route("/user/edit", name="user_edit", methods={"POST"})
	 */
	public function UserUpdate(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$json = $request->request->get('form');
			$form = json_decode($json);

 			$User =  $em->getRepository(Users::class)->findOneById($identity->sub);
			
			$response = array(
				'status' => 'Error',
				'code' => 400,
				'msg' => 'Error al actualizar usuario.',
	 		);

	 		if ($json != null) {
	 			$createdAt = new \Datetime('now');

	 			$login = (isset($form->login)) ? $form->login : null; 
	 			$password = (isset($form->password)) ? $form->password : null;
	 			$email = (isset($form->email)) ? $form->email : null;
	 			$rol = (isset($form->rol)) ? $form->rol : null;
	 			$name = (isset($form->name)) ? $form->name : null;
	 			$surname = (isset($form->surname)) ? $form->surname : null;
	 			$phone = (isset($form->phone)) ? $form->phone : null;

	 			$emailConstraint = new Assert\Email();
				$emailConstraint->message = 'El email no es valido';
				$validate_email = $validator->validate($email, $emailConstraint);

				if ($email != null && count($validate_email) == 0 && $password != null && $name != null && $surname != null && $rol != null && $login != null && $phone != null) {

					$User->setLogin($login);
/*					$password = hash('sha256', $password);
					$User->setPassword($password);*/
					$User->setEmail($email);
					$User->setIsActive(1);
					$User->setRole($rol);
					$User->getIdUserData()->setName($name);
					$User->getIdUserData()->setSurname($surname);
					$User->getIdUserData()->setPhone($phone);

					$isset_user = $em->getRepository(Users::class)->findBy(array('login' => $login));
					if (count($isset_user) == 0) {
						$em->persist($User);
		    			$em->flush();
						$response = array(
							'status' => 'Success',
							'code' => 200,
							'msg' => 'Usuario actualizado.',
							'user' => $User
			 			);
					} else {
						$response = array(
							'status' => 'Error',
							'code' => 400,
							'msg' => 'El usuario se encuentra registrado.',
	 					);
					}
				}
	 		
	 		}
		} else {
			$response = array(
				'status' => 'Error',
				'code' => 400,
				'msg' => 'No tiene acceso.',
			);
		}

		return $helpers->json($response);	
	}
			
}
