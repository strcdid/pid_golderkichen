<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliend;

class KontakController extends Controller
{
    public function index()
    {
        return view('view/contac');
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'subject' => 'required',
            'file' => 'required|image',
            'message' => 'required',
        ]);

        $contact = new Cliend;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->subject = $request->subject;
        $contact->message = $request->message;
        // $contact->save();

        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('/lgarin211.github.io/cliend/'.date('MY')), $filename);
            $contact->banner = '/cliend/'.date('MY/').$filename;
        }
        dd($contact);
        $contact->save();

        return redirect('/Contac')->with('success', 'Thanks for your inquiry!');




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
