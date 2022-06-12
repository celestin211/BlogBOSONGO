<?php
use \Bosongo\Framework\Configuration;
// Contrôleur frontal : instancie un routeur pour traiter la requête entrante
// Utilisation de l'autoloader de composer
require_once 'vendor/autoload.php';
require_once('Framework/Router.php');
use \Bosongo\Framework\Router;
$router = new Router();
$router->routingRequest();
