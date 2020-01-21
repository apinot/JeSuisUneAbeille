<?php
require_once('../../vendor/autoload.php');

use \abeille\controllers\ControllerPlantes;
use \abeille\controllers\ControllerRuche;

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

$app->get('/plante/add', ControllerPlantes::class.':afficherAjoutForm')->setName('formAjoutPlante');
$app->post('/plante/add', ControllerPlantes::class.':ajouterPlante')->setName('ajouterPlante');

$app->get('/plante/{id}', ControllerPlantes::class.':afficherPlante')->setName('afficherPlante');
$app->get('/plante/{id}/edit', ControllerPlantes::class.':afficherEditForm')->setName('formEditPlante');
$app->put('/plante/{id}', ControllerPlantes::class.':modifierPlante')->setName('modifierPlante');

$app->delete('/plante/{id}', ControllerPlantes::class.':supprimerPlante')->setName('supprimerPlante');

$app->get('/ruche', ControllerRuche::class.':afficherRuche')->setName('afficherRuche');


//run application
$app->run();