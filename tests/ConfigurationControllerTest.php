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
        $response = $client->request('POST', 'login', [
            'json' => ['admin@admin.com', '12345678']
        ]);
        //var_dump($response);
        $this->assertEquals(200, $response->getStatusCode());;
    }
}