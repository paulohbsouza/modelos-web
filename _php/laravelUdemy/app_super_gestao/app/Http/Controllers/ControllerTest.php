<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ControllerTest extends Controller
{
    public function test(int $var1, int $var2)
    {
        //echo $var1 ." - ". $var2;
        //return view('site.test', ['var1'=>$var1, 'var2'=>$var2]);
        //return view('site.test', ['var1'=>$var1, 'var2'=>$var2]);
        //return view('site.test', compact('var1', 'var2'));
        return view('site.test')->with('var1', $var1)->with('var2', $var2);
    }
}
