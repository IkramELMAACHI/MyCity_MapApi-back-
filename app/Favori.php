<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Favori extends Model
{

    protected $fillable = [
        'place_id', 'name', 'type','vicinity','rating','open_now','user_id'
    ];

    public function User()
    {
        return $this->belongsTo('App/User');
    }
}
