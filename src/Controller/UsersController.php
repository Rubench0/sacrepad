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
use App\Entity\UserData;
use App\Entity\Student;
use App\Entity\Facilitator;


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

				if ($email != null && count($validate_email) == 0) {

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
							$password = hash('sha256', $password);
							$User->setPassword($password);
							break;
						case '2':
							$Facilitator = new Facilitator();
							$Facilitator->setIdentification($identification);
							$Facilitator->setName($name);
							$Facilitator->setSurname($surname);
							$Facilitator->setPhone($phone);
							$Facilitator->setProfession($profession);
							$Facilitator->setCreateTime($createdAt);
							$user_id = $em->getRepository(User::class)->findOneById($identity->id);
							$Facilitator->setUser($user_id);
							$em->persist($Facilitator);
				    		$em->flush();
							$User->setFacilitator($Facilitator);
							$helpers->binnacleAction('Facilitator','registro',$createdAt,'Agregando datos de usuario facilitador.',$identity->id);
							$password = hash('sha256', $identification);
							$User->setPassword($password);
							break;
						case '3':
							$Student = new Student();
							$Student->setIdentification($identification);
							$Student->setName($name);
							$Student->setName2($name2);
							$Student->setSurname($surname);
							$Student->setSurname2($surname2);
							$Student->setPhone($phone);
							$Student->setAdmitted(0);
							$Student->setCreateTime($createdAt);
							$user_id = $em->getRepository(User::class)->findOneById($identity->id);
							$Student->setUser($user_id);
							$em->persist($Student);
				    		$em->flush();
							$User->setStudent($Student);
							$helpers->binnacleAction('Student','registro',$createdAt,'Agregando datos de usuario estudiante.',$identity->id);
							$password = hash('sha256', $identification);
							$User->setPassword($password);
							break;
					}
					$User->setLogin($login);
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
	 * @Route("/user/profile/edit", name="user_profile_edit", methods={"POST"})
	 */
	public function UserProfileUpdate(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$json = $request->request->get('form');
			$form = json_decode($json);

 			$User =  $em->getRepository(User::class)->findOneById($form->id);
			
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'Error al actualizar usuario.',
	 		);

	 		if ($json != null) {
	 			$createdAt = new \Datetime('now');

	 			$login = (isset($form->login)) ? $form->login : null; 
	 			$password = (isset($form->password)) ? $form->password : null;
	 			$email = (isset($form->email)) ? $form->email : null;
	 			//$rol = (isset($form->rol)) ? $form->rol : null;
	 			$name = (isset($form->name)) ? $form->name : null;
	 			$surname = (isset($form->surname)) ? $form->surname : null;
	 			$phone = (isset($form->phone)) ? $form->phone : null;

	 			$emailConstraint = new Assert\Email();
				$emailConstraint->message = 'El email no es valido';
				$validate_email = $validator->validate($email, $emailConstraint);

				if ($email != null && count($validate_email) == 0 && $name != null && $surname != null && $phone != null) {

					//$User->setLogin($login);
/*					$password = hash('sha256', $password);
					$User->setPassword($password);*/
					$User->setEmail($email);
					$User->setIsActive(1);
					//$User->setRole($rol);
					$User->getUserData()->setName($name);
					$User->getUserData()->setSurname($surname);
					$User->getUserData()->setPhone($phone);

/*					$isset_user = $em->getRepository(User::class)->findBy(array('login' => $login));
					if (count($isset_user) == 0) {*/
					$em->persist($User);
					$em->flush();
					$helpers->binnacleAction('User','actualización',$createdAt,'Modificando datos de usuario.',$identity->id);
					$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => 'Usuario actualizado.',
						'user' => $User
		 			);
/*					} else {
						$response = array(
							'status' => 'error',
							'code' => 400,
							'msg' => 'El usuario se encuentra registrado.',
	 					);
					}*/
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
	 * @Route("/user/all", name="user_all", methods={"POST"})
	 */
	public function UserAll(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$data = array();
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$users =  $em->getRepository(User::class)->findAll();
			foreach ($users as $key => $value) {
				$data[] = [
					'id' => $users[$key]->getId(),
					'login' => $users[$key]->getLogin(),
					'email' => $users[$key]->getEmail(),
				];
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando lista de usuarios.',$identity->id);
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
	 * @Route("/user/get", name="user_get", methods={"POST"})
	 */
	public function UserGet(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$user_login = $request->request->get('id');
			$identity = $jwtauth->checkToken($token, true);
			$user =  $em->getRepository(User::class)->findOneById($user_login);
			if ($user->getUserData()) {
				$data = [
						'id' => $user->getId(),
						'login' => $user->getLogin(),
						'email' => $user->getEmail(),
						'rol' => $user->getRole(),
						'name' => $user->getUserData()->getName(),
						'surname' => $user->getUserData()->getSurname(),
						'phone' => $user->getUserData()->getPhone(),
						'type' => '1',
					];
				
			} elseif ($user->getFacilitator())  {
				$data = [
						'id' => $user->getId(),
						'login' => $user->getLogin(),
						'email' => $user->getEmail(),
						'rol' => $user->getRole(),
						'name' => $user->getFacilitator()->getName(),
						'surname' => $user->getFacilitator()->getSurname(),
						'phone' => $user->getFacilitator()->getPhone(),
						'type' => '2',
						'identification' => $user->getFacilitator()->getIdentification(),
						'profession' => $user->getFacilitator()->getProfession(),
				];
			} elseif ($user->getStudent()) {
				$data = [
						'id' => $user->getId(),
						'login' => $user->getLogin(),
						'email' => $user->getEmail(),
						'rol' => $user->getRole(),
						'name' => $user->getStudent()->getName(),
						'surname' => $user->getStudent()->getSurname(),
						'phone' => $user->getStudent()->getPhone(),
						'type' => '3',
						'identification' => $user->getStudent()->getIdentification(),
						'name2' => $user->getStudent()->getName2(),
						'surname2' => $user->getStudent()->getSurname2(),
				];
			}
			$helpers->binnacleAction('User','consulta',$createdAt,'Consultando datos de usuario.',$identity->id);
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
	 * @Route("/user/changepassword", name="user_changepassword", methods={"POST"})
	 */
	public function UserChangePassword(Request $request,Helpers $helpers, JwtAuth $jwtauth) {

		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$json = $request->request->get('form');
			$form = json_decode($json);

 			$User =  $em->getRepository(User::class)->findOneById($form->id);
			
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'Error al actualizar usuario.',
	 		);

	 		if ($json != null) {
	 			$createdAt = new \Datetime('now');
	 			$password = $User->getPassword();
	 			$password_old = (isset($form->password_old)) ? $form->password_old : null;
	 			$password_new = (isset($form->password_new)) ? $form->password_new : null;

	 			$password_old = hash('sha256', $password_old);

				if ($password == $password_old) {
					$password_new = hash('sha256', $password_new);
					$User->setPassword($password_new);
					$em->persist($User);
					$em->flush();
					$helpers->binnacleAction('User','actualización',$createdAt,'Actualización de contraseña de usuario.',$identity->id);
					$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => 'Contraseña actualizada exitosamente.',
		 			);
				} else {
					$response = array(
						'status' => 'error',
						'code' => 400,
						'msg' => 'La contraseña actual no coincide.',
					);
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
	 * @Route("/user/edit", name="user_edit", methods={"POST"})
	 */
	public function UserEdit(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$identity = $jwtauth->checkToken($token, true);
			$json = $request->request->get('form');
			$form = json_decode($json);

 			$User =  $em->getRepository(User::class)->findOneById($form->id);
 			$user_update =  $em->getRepository(User::class)->findOneById($identity->id);
			
			$response = array(
				'status' => 'error',
				'code' => 400,
				'msg' => 'Error al actualizar usuario.',
	 		);

	 		if ($json != null) {
	 			$updateAt = new \Datetime('now');

	 			$login = (isset($form->login)) ? $form->login : null; 
	 			$password = (isset($form->password)) ? $form->password : null;
	 			$email = (isset($form->email)) ? $form->email : null;
	 			$rol = (isset($form->rol)) ? $form->rol : null;
	 			$name = (isset($form->name)) ? $form->name : null;
	 			$name2 = (isset($form->name2)) ? $form->name2 : null;
	 			$surname = (isset($form->surname)) ? $form->surname : null;
	 			$surname2 = (isset($form->surname2)) ? $form->surname2 : null;
	 			$phone = (isset($form->phone)) ? $form->phone : null;
	 			$identification = (isset($form->identification)) ? $form->identification : null;
	 			$profession = (isset($form->profession)) ? $form->profession : null;

				if ($email != null) {
					$User->setLogin($login);
					$User->setEmail($email);
					$User->setRole($rol);
					$User->setIsActive(1);
			 		if ($form->type == '1') {
						$User->getUserData()->setName($name);
						$User->getUserData()->setSurname($surname);
						$User->getUserData()->setPhone($phone);

					} elseif ($form->type == '2') {
						$User->getFacilitator()->setIdentification($identification);
						$User->getFacilitator()->setName($name);
						$User->getFacilitator()->setSurname($surname);
						$User->getFacilitator()->setPhone($phone);
						$User->getFacilitator()->setProfession($profession);
						$User->getFacilitator()->setUpdateTime($updateAt);
						$User->getFacilitator()->setUser($user_update);

					} elseif ($form->type == '3') {
						$User->getStudent()->setName($name);
						$User->getStudent()->setName2($name2);
						$User->getStudent()->setSurname($surname);
						$User->getStudent()->setSurname2($surname2);
						$User->getStudent()->setPhone($phone);
						$User->getStudent()->setIdentification($identification);
						$User->getStudent()->setUpdateTime($updateAt);
						$User->getStudent()->setUser($user_update);

					}

					$em->persist($User);
					$em->flush();
					$helpers->binnacleAction('User','actualización',$updateAt,'Modificando datos de usuario.',$identity->id);
					$response = array(
						'status' => 'success',
						'code' => 200,
						'msg' => 'Usuario actualizado.'
		 			);
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
	 * @Route("/user/delete", name="user_delete", methods={"POST"})
	 */
	public function UserDelete(Request $request,Helpers $helpers, JwtAuth $jwtauth) {
		$token = $request->request->get('authorization', null);
		$auth_check = $jwtauth->checkToken($token);
		$createdAt = new \Datetime('now');

		if ($auth_check) {
			$em = $this->getDoctrine()->getManager();
			$json = $request->request->get('form');
			$form = json_decode($json);
			$identity = $jwtauth->checkToken($token, true);
			$login_user = $form->login;
			if ($form->type != '1') {
				$user =  $em->getRepository(User::class)->findOneById($form->id);
				$em->remove($user);
				$em->flush();
				$helpers->binnacleAction('User','consulta',$createdAt,'Se elimino el usuario '.$login_user.'.',$identity->id);
				$response = array(
					'status' => 'success',
					'code' => 200,
					'data' => 'Usuario eliminado.',
				);
			} else {
				$response = array(
					'status' => 'error',
					'code' => 400,
					'msg' => 'No puede eliminar este usuario.',
				);
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
			
}


