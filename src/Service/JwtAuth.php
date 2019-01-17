<?php

namespace App\Service;

use Firebase\JWT\JWT;
use App\Entity\Users;

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
		$user = $this->manager->getRepository(Users::class)->findOneBy(array(
			'email'=>$email,
			'password'=>$password
		));

		$singup = false;
		if (is_object($user)) {
			$singup = true;
		}

		if ($singup == true) {
			$token = array(
				'sub' => $user->getId(),
				'email' => $user->getEmail(),
				'login' => $user->getLogin(),
				'active' => $user->getIsActive(),
				'role' => $user->getRoles(),
				'name' => $user->getIdUserData()->getName(),
				'surname' => $user->getIdUserData()->getSurname(),
				'phone' => $user->getIdUserData()->getPhone(),
				'iat' => time(),
				'exp' => time() + (7 * 24 * 60 * 60)
			);

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

		if (isset($token_decode) && is_object($token_decode) && isset($token_decode->sub)) {
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