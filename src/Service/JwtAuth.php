<?php

namespace App\Service;

use Firebase\JWT\JWT;
use App\Entity\User;

/**
 * 
 */
class JwtAuth {
	public $manager;
	public $key;
	
	public function __construct($manager) {
		$this->manager = $manager;
		$this->key = 'holak$$e3213123';
	}
	
	public function singup($email, $password, $getHash = null) {
		$user = $this->manager->getRepository(User::class)->findOneBy(array(
			'email'=>$email,
			'password'=>$password
		));

		$singup = false;
		if (is_object($user)) {
			$singup = true;
		}

		if ($singup == true) {

			if ($user->getUserData() != null) {
				$token = array(
					'id' => $user->getId(),
					'email' => $user->getEmail(),
					'login' => $user->getLogin(),
					'active' => $user->getIsActive(),
					'rol' => $user->getRole(),
					'name' => $user->getUserData()->getName(),
					'surname' => $user->getUserData()->getSurname(),
					'phone' => $user->getUserData()->getPhone(),
					'type' => '1',
					'iat' => time(),
					'exp' => time() + (7 * 24 * 60 * 60)
				);
			} elseif ($user->getStudent() != null) {
				$token = array(
					'id' => $user->getId(),
					'email' => $user->getEmail(),
					'login' => $user->getLogin(),
					'active' => $user->getIsActive(),
					'rol' => $user->getRole(),
					'name' => $user->getStudent()->getName(),
					'surname' => $user->getStudent()->getSurname(),
					'phone' => $user->getStudent()->getPhone(),
					'type' => '3',
					'iat' => time(),
					'exp' => time() + (7 * 24 * 60 * 60)
				);
			} elseif ($user->getFacilitator() != null) {
				$token = array(
					'id' => $user->getId(),
					'email' => $user->getEmail(),
					'login' => $user->getLogin(),
					'active' => $user->getIsActive(),
					'rol' => $user->getRole(),
					'name' => $user->getFacilitator()->getName(),
					'surname' => $user->getFacilitator()->getSurname(),
					'phone' => $user->getFacilitator()->getPhone(),
					'type' => '2',
					'iat' => time(),
					'exp' => time() + (7 * 24 * 60 * 60)
				);
			}


			$jwt = JWT::encode($token, $this->key, 'HS256');
			$jwt_decode = JWT::decode($jwt, $this->key, array('HS256'));

			if ($getHash == null) {
				$data = $jwt;
			} else {
				$data = $jwt_decode;
			}
		} else {
			$data = array(
				'status' => 'error',
				'data' => 'No logueado'
			);
		}

		return $data;
	}


	public function checkToken($jwt, $getIdentity = null) {
		$auth = false;
		try {
			$token_decode = JWT::decode($jwt, $this->key, array('HS256'));
		} catch(\UnexpectedValueException $e) {
			$auth = false;
		} catch(\DomainException $e) {
			$auth = false;
		}

		if (isset($token_decode) && is_object($token_decode) && isset($token_decode->id)) {
			$auth = true;
		} else {
			$auth = false;
		}

		if ($getIdentity == false) {
			return $auth;
		} else {
			return $token_decode;
		}

	}
}