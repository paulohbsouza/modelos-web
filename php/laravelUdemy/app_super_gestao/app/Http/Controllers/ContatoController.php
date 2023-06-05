<?php

namespace App\Http\Controllers;

use App\SiteContato;
use Illuminate\Http\Request;
use App\MotivoContato;

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

        $motivos_contato = MotivoContato::all();
        return view('site.contato', ['titulo' => 'Contato2', 'motivos_contato' => $motivos_contato]);
    }

    public function salvar (Request $request) 
    {       
        $regras = [
            'nome' => 'required|min:3|max:40|unique:site_contatos',
            'telefone' => 'required',
            'email' => 'email',
            'motivo_contatos_id' => 'required',
            'mensagem' => 'required|max:2000'
        ];

        $feedback = [
            'nome.required' => 'O campo nome precisa ser preenchido.',
            'nome.min' => 'O campo nome precisa ter no mínimo três caracteres.',
            'nome.max' => 'O campo nome precisa ter no maximo 40 caracteres.',
            'nome.unique' => 'O nome ja existe.',
            'telefone.required' => 'O campo telefone precisa ser preenchido.',
            'required' => 'O campo :attribute precisa ser preenchido!',
            'email' => 'O :attribute precisa ser preenchido!'
        ];

        $request->validate($regras, $feedback);

        SiteContato::create($request->all());
        return redirect()->route('site.index');
    }
}
