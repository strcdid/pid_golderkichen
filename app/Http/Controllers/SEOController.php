<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Artesaos\SEOTools\Facades\SEOTools;

class SEOController extends Controller
{
    public function index(){

        SEOTools::setTitle('Golden Kitchen Renovatio');
        SEOTools::setDescription('This is my page description of Golden Kitchen Renovation');
        SEOTools::opengraph()->setUrl('https://php-anxious-ability-riviha3450710521.codeanyapp.com/pid_golderkichen/');
        SEOTools::setCanonical('https://php-anxious-ability-riviha3450710521.codeanyapp.com/pid_golderkichen');
        SEOTools::opengraph()->addProperty('type', 'articles');
        SEOTools::twitter()->setSite('@goldenkitchenrenovation');
        SEOTools::jsonLd()->addImage('https://php-anxious-ability-riviha3450710521.codeanyapp.com/pid_golderkichen/frontTheme/assets/images/logo.png');

        return view('view.index');
    }
}
