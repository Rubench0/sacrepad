<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Service\Helpers;
use App\Service\JwtAuth;


class MainController extends AbstractController
{
    /**
     * @Route("/main", name="main", methods={"POST"})
     */
    public function index(Request $request, Helpers $helpers, JwtAuth $jwtauth) {
        $token = $request->request->get('authorization', null);

        if ($token && $jwtauth->checkToken($token)) {
            $data = $helpers->json(array(
                'status' => 'success',
                'data' => 'hola'
            ));

        } else {
            $data = $helpers->json(array(
                'status' => 'error',
                'data' => 'token invalido'
            ));
            
        }

   		return $data;
        // return $this->render('main/index.html.twig', [
        //     'controller_name' => $variable,
        // ]);
    }
}
