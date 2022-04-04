<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KontakController extends Controller
{
    public function index()
    {
        return view('onlink.contact');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'contact-name' => 'required',
            'contact-email' => 'required|email',
            'contact-phone' => 'required',
            'contact-subject' => 'required',
            'contact-file' => 'required|image',
            'contact-message' => 'required',
            'g-recaptcha-response' => 'required|recaptchav3:contact,0.5'
        ]);

        // $score = RecaptchaV3::verify($request->get('g-recaptcha-response'), 'contact');
        // if($score > 0.7) {
            // go
        // } elseif($score > 0.3) {
            // require additional email verification
        // } else {
        //     return abort(400, 'You are most likely a bot');
        // }
    }
}
