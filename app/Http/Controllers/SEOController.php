<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Artesaos\SEOTools\Facades\SEOTools;

class SEOController extends Controller
{
    public function index(){
        SEOTools::setDescription(setting('site.description'));
        SEOTools::opengraph()->setUrl('https://php-anxious-ability-riviha3450710521.codeanyapp.com/pid_golderkichen/');
        SEOTools::setCanonical(url('/'));
        SEOTools::opengraph()->addProperty('type', 'Company Profile');
        SEOTools::twitter()->setSite('@goldenkitchenrenovation');
        SEOTools::opengraph()->addProperty('keyword',[setting('site.title'),setting('site.title'),setting('site.description'),setting('admin.title'),setting('admin.description'),setting('contact.CA'),setting('contact.CP'),setting('contact.CW'),setting('contact.CE'),setting('contact.CI'),setting('contact.CF')]);
        SEOTools::jsonLd()->addImage(url('/lgarin211.github.io/').setting('site.logo'));
        return view('view.index');
    }

    public function yanglain(){
        // SEOTools::setTitle(setting('site.title'));
        SEOTools::setDescription(setting('site.description'));
        SEOTools::opengraph()->setUrl('https://php-anxious-ability-riviha3450710521.codeanyapp.com/pid_golderkichen/');
        SEOTools::setCanonical(url('/'));
        SEOTools::opengraph()->addProperty('type', 'Company Profile');
        SEOTools::twitter()->setSite('@goldenkitchenrenovation');
        SEOTools::opengraph()->addProperty('keyword',[setting('site.title'),setting('site.title'),setting('site.description'),setting('admin.title'),setting('admin.description'),setting('contact.CA'),setting('contact.CP'),setting('contact.CW'),setting('contact.CE'),setting('contact.CI'),setting('contact.CF')]);
        SEOTools::jsonLd()->addImage(url('/lgarin211.github.io/').setting('site.logo'));

        return view('view.index');
    }

}
