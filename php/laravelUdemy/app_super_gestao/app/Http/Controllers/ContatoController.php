<?php

namespace App\Http\Controllers;

use App\SiteContato;
use Illuminate\Http\Request;

class ContatoController extends Controller
{
    //
    public function contato (Request $request) {

        //dd($request->all());
        //echo $request->input('nome');
        //var_dump($_POST);

        /*
        $contato = new SiteContato();
        $contato->nome = $request->input('nome');
        $contato->telefone = $request->input('telefone');
        $contato->email = $request->input('email');
        $contato->motivoContato = $request->input('motivo_contato');
        $contato->mensagem = $request->input('mensagem');
        $contato->save();
        */

        /*
        $contato = new SiteContato();
        $contato->fill($request->all());
        print_r($contato->getAttributes());
        $contato->save();
        */

        SiteContato::create($request->all());

        return view('site.contato', ['titulo' => 'Contato2']);
    }
}
