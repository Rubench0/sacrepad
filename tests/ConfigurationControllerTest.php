<?php

namespace App\Tests;

use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;
use App\Controller\ConfigurationController;

class ConfigurationControllerTest extends TestCase
{
    public function testSomething()
    {
        $client = new Client([
            'base_uri' => 'http://localhost/sacrepad/sacrepad-api/public/index.php/',
            'timeout'  => 2.0,
        ]);
        $data = array();
        $data['email'] = 'admin@admin.com';
        $data['password'] = '12345678';
        $data2 = array();
        $data2['json'] = $data;
        $formData = json_encode($data);
        var_dump($formData);
        $response = $client->request('POST', 'login', [
            'headers' => ['Content-Type' => 'application/x-www-form-urlencoded'],
            // 'body' => $formData
            'form_params' => ['json' , $formData]
        ]);
        $body = json_decode($response->getBody(), true);
        var_dump($body);
        //$this->assertEquals(200, $response->getStatusCode());;
    }
}