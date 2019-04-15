<?php

namespace App\Service;

use Firebase\JWT\JWT;
use App\Entity\User;
use App\Entity\BinnacleAccessUser;

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
			
			$dateAccess = new \Datetime('now');
			$user_id = $this->manager->getRepository(User::class)->findOneById($user->getId());
			$BinnacleAccessUser = new BinnacleAccessUser();
			$BinnacleAccessUser->setDate($dateAccess);
			$so = $this->getSO();
			$BinnacleAccessUser->setSystem($so);
			$device = $this->getDevice();
			$BinnacleAccessUser->setDevice($device);
			$ip = $this->getIP();
			$BinnacleAccessUser->setAdreess($ip);
			$BinnacleAccessUser->setUser($user_id);
			$this->manager->persist($BinnacleAccessUser);
			$this->manager->flush();

			if ($getHash == null) {
				$data = $jwt;
			} else {
				$data = $jwt_decode;
			}
		} else {
			$data = array(
				'status' => 'error',
				'data' => 'Datos de acceso incorrecto'
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

	public function getIP() {
		if (isset($_SERVER["HTTP_CLIENT_IP"])) {
			return $_SERVER["HTTP_CLIENT_IP"];
		} elseif (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
			return $_SERVER["HTTP_X_FORWARDED_FOR"];
		} elseif (isset($_SERVER["HTTP_X_FORWARDED"])) {
			return $_SERVER["HTTP_X_FORWARDED"];
		} elseif (isset($_SERVER["HTTP_FORWARDED_FOR"])) {
			return $_SERVER["HTTP_FORWARDED_FOR"];
		} elseif (isset($_SERVER["HTTP_FORWARDED"])) {
			return $_SERVER["HTTP_FORWARDED"];
		} else {
			return $_SERVER["REMOTE_ADDR"];
		}
	}

	public function getDevice() {
		$tablet_browser = 0;
		$mobile_browser = 0;
		$body_class = 'desktop';
		if (preg_match('/(tablet|ipad|playbook)|(android(?!.*(mobi|opera mini)))/i', strtolower($_SERVER['HTTP_USER_AGENT']))) {
			$tablet_browser++;
			$body_class = "tablet";
		}
		if (preg_match('/(up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone|android|iemobile)/i', strtolower($_SERVER['HTTP_USER_AGENT']))) {
			$mobile_browser++;
			$body_class = "mobile";
		}
		if ((strpos(strtolower($_SERVER['HTTP_ACCEPT']),'application/vnd.wap.xhtml+xml') > 0) or ((isset($_SERVER['HTTP_X_WAP_PROFILE']) or isset($_SERVER['HTTP_PROFILE'])))) {
			$mobile_browser++;
			$body_class = "mobile";
		}

		$mobile_ua = strtolower(substr($_SERVER['HTTP_USER_AGENT'], 0, 4));
		$mobile_agents = array(
			'w3c ','acs-','alav','alca','amoi','audi','avan','benq','bird','blac',
			'blaz','brew','cell','cldc','cmd-','dang','doco','eric','hipt','inno',
			'ipaq','java','jigs','kddi','keji','leno','lg-c','lg-d','lg-g','lge-',
			'maui','maxo','midp','mits','mmef','mobi','mot-','moto','mwbp','nec-',
			'newt','noki','palm','pana','pant','phil','play','port','prox',
			'qwap','sage','sams','sany','sch-','sec-','send','seri','sgh-','shar',
			'sie-','siem','smal','smar','sony','sph-','symb','t-mo','teli','tim-',
			'tosh','tsm-','upg1','upsi','vk-v','voda','wap-','wapa','wapi','wapp',
			'wapr','webc','winw','winw','xda ','xda-');

		if (in_array($mobile_ua,$mobile_agents)) {
			$mobile_browser++;
		}

		if (strpos(strtolower($_SERVER['HTTP_USER_AGENT']),'opera mini') > 0) {
			$mobile_browser++;
			//Check for tablets on opera mini alternative headers
			$stock_ua = strtolower(isset($_SERVER['HTTP_X_OPERAMINI_PHONE_UA'])?$_SERVER['HTTP_X_OPERAMINI_PHONE_UA']:(isset($_SERVER['HTTP_DEVICE_STOCK_UA'])?$_SERVER['HTTP_DEVICE_STOCK_UA']:''));
			if (preg_match('/(tablet|ipad|playbook)|(android(?!.*mobile))/i', $stock_ua)) {
				$tablet_browser++;
			}
		}
		if ($tablet_browser > 0) {
			return 'tablet';
		} else if ($mobile_browser > 0) {
			return 'movil';
		} else {
			return 'ordenador';
		}
	}

	public function getSO() {
		$ciudad = $_SERVER['HTTP_USER_AGENT'];
		return $ciudad;
	}
}