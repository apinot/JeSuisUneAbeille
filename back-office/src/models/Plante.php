<?php
namespace abeille\models;

use \Illuminate\Database\Eloquent\SoftDeletes;

class Plante extends \Illuminate\Database\Eloquent\Model {
    use SoftDeletes;
    protected $table = 'plante';
    protected $fillable = ['id', 'nom', 'nom_latin', 'taille', 'couleur', 'floraison', 'emplacement', 'miellat', 'nectar', 'pollen', 'photo'];
}