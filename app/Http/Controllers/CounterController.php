<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliend;

class CounterController extends Controller
{
    public function index(Request $request)
    {
        // dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required',
        ]);

        $counter = new Cliend;
        $counter->name = $request->name;
        $counter->email = $request->email;
        $counter->phone = $request->phone;
        $counter->message = $request->message;
        // $counter->save();
        // dd($counter);
        $counter->save();

        return redirect('/')->with('success', 'Thanks for your inquiry!');
    }

}
