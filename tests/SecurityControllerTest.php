<?php

/**
 * This file is part of "SAPRCEPAD"
 * Copyright (c) 2019 "PROGRAMA DE ACTUALIZACIÓN DOCENTE DE LA UNIVERSIDAD DE LOS ANDES"
 * All rights reserved
 *
 * @author Rubench0 <rubenchoo.garcia@gmail.com>
 * @version 1.0
 */

namespace App\Tests;

use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;
use App\Controller\SecurityController;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

/**
 * @brief SecurityControllerTest
 * Clase utilizada para realizar las pruebas unitaras de inicio de sesión, se prueba el método login de la clase SecurityController
 *
 */
class SecurityControllerTest extends WebTestCase {

    /**
     * @brief testAuthCorrect
     * El método verifica la autenticación con datos correctos.
     * 
     * Primero se construye un arreglo con los datos correctos de un usuario del sistema. Luego inicializamos el cliente web que nos permitira enviar la solicitud via HTTP a nuestra API. Por último verificamos el código de respuesta de nuestra petición, si es 200 la respuesta y la prueba es exitosa.
     */
    public function testAuthCorrect() {
        $data = array();
        $data['email'] = 'admin@admin.com';
        $data['password'] = '12345678';
        $sendData = json_encode($data);
        $client = static::createClient([
            'base_uri' => 'http://localhost/sacrepad/sacrepad-api/public/index.php/',
        ]);
        $client->request('POST', 'login',['json' => $sendData]);
        $body = json_decode($client->getResponse()->getContent(), true);
        $res = $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }

    /**
     * @brief testAuthInCorrect
     * El método verifica la autenticación con datos incorrectos.
     * 
     * Primero se construye un arreglo con los datos incorrectos de un usuario del sistema. Luego inicializamos el cliente web que nos permitira enviar la solicitud via HTTP a nuestra API. Por último verificamos el código de respuesta de nuestra petición, si es 200 la respuesta y la prueba es exitosa.
     */
    public function testAuthInCorrect() {
        $data = array();
        $data['email'] = 'admin@admin.com';
        $data['password'] = '1234562278';
        $sendData = json_encode($data);
        $client = static::createClient([
            'base_uri' => 'http://localhost/sacrepad/sacrepad-api/public/index.php/',
        ]);
        $client->request('POST', 'login',['json' => $sendData]);
        $body = json_decode($client->getResponse()->getContent(), true);
        var_dump($body['msg']);
        $res = $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }
}