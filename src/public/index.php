<?php
require_once('../../vendor/autoload.php');

use \abeille\controllers\ControllerPlantes;

//database connection with Eloquent
$capsule = new \Illuminate\Database\Capsule\Manager;
$capsule->addConnection(parse_ini_file('../config/db.conf.ini'));
$capsule->setAsGlobal();
$capsule->bootEloquent();

//loading settings from config/settings.php
$settings = require_once "../config/settings.php";
$container = new \Slim\Container($settings);
$container["rootDir"] = __DIR__;
$app = new \Slim\App($container);

/** Routes */
//Add your routes here
$app->get('/', ControllerPlantes::class.':afficherListePlantes')->setName('listerPlantes');

$app->get('/plante/{id}', ControllerPlantes::class.':afficherEditForm')->setName('afficherEditForm');
$app->delete('/plante/{id}', ControllerPlantes::class.':supprimerPlante')->setName('supprimerPlante');

//run application
$app->run();