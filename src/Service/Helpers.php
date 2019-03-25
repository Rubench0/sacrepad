<?php

namespace App\Service;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\BinnacleActions;
use App\Entity\BinnacleAccessUser;
use App\Entity\User;

class Helpers {
	public $manager;
	
	public function __construct($manager) {
		$this->manager = $manager;
	}

	public function json($data) {
		$response = new Response(json_encode($data));
		$response->headers->set('Content-Type', 'application/json');
		return $response;
	}

	public function binnacleAction($table,$action,$date,$description,$user) {
		$em = $this->manager;
		$user_id = $em->getRepository(User::class)->findOneById($user);
		$BinnacleActions = new BinnacleActions();
		$BinnacleActions->setEntity($table);
		$BinnacleActions->setAction($action);
		$BinnacleActions->setDate($date);
		$BinnacleActions->setDescription($description);
		$BinnacleActions->setUser($user_id);
		$em->persist($BinnacleActions);
		$em->flush();
		return 'ok';
	}
}