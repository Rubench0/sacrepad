<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use App\Service\Helpers;
use App\Service\JwtAuth;


class SecurityController extends AbstractController
{
	/**
	 * @Route("/login", name="login", methods={"POST"})
	 */
	public function login(Request $request,Helpers $helpers,ValidatorInterface $validator, JwtAuth $jwtauth) {

		$data = array(
			'status' => 'error',
			'data' => 'Send json via post!!'
		);

		$json = $request->request->get('json');
		$params = json_decode($json);
		if ($json != null) {
			$params = json_decode($json);
			$email = (isset($params->email)) ? $params->email : null;
			$password = (isset($params->password)) ? $params->password : null;
			$getHash = (isset($params->getHash)) ? $params->getHash : null;

			$emailConstraint = new Assert\Email();
			$emailConstraint->message = 'El email no es valido';
			$validate_email = $validator->validate($email, $emailConstraint);
			$pwd = hash('sha256', $password);

			if ($email != null && count($validate_email) == 0 && $password != null) {
				if ($getHash == null || $getHash == false) {
					$singup = $jwtauth->singup($email, $pwd);
				} else {
					$singup = $jwtauth->singup($email, $pwd, true);
				}
/*	   			$data = array(
					'status' => 'success',
					'data' => 'Email correcto',
					'singup' => $singup
				);		*/	

				return $helpers->json($singup);
			} else {
				$data = array(
					'status' => 'error',
					'data' => 'Email incorrecto o contraseña'
				);
			}

		}
		return $helpers->json(array($data));

		// return $this->render('main/index.html.twig', [
		//     'controller_name' => $variable,
		// ]);
	}
}
