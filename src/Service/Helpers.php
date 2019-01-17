<?php

namespace App\Service;
use Symfony\Component\HttpFoundation\Response;

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
}