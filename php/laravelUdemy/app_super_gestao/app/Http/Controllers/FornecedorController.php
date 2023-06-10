<?php

namespace App\Http\Controllers;

use App\Fornecedor;
use Illuminate\Http\Request;

class FornecedorController extends Controller
{
    /**
     * 
     */
    public function index ()
    {
        return view('app.fornecedor.index');
    }

    /**
     * 
     */
    public function listar (Request $request)
    {
        $fornecedores = Fornecedor::where('nome', 'like', '%'.$request->input('nome').'%')
                                    ->where('site', 'like', '%'.$request->input('site').'%')
                                    ->where('uf', 'like', '%'.$request->input('uf').'%')
                                    ->where('email', 'like', '%'.$request->input('email').'%')
                                    ->get();

        return view('app.fornecedor.listar', ['fornecedores' => $fornecedores]);
    }

    /**
     * 
     */
    public function adicionar (Request $request)
    {
        echo "<pre>";
        print_r($request->all());      
        echo "</pre>";  

        $msg = '';

        if ($request->input('_token') != '')
        {
            $regras = [
                'nome' => 'required|min:3|max:40',
                'site' => 'required',
                'uf' => 'required|min:2|max:2',
                'email' => 'email'
            ];
            $feedback = [
                'required' => 'O campo :attribute deve ser preenchido.',
                'nome.min' => 'O campo nome deve ter no minimo três caracteres.',
                'nome.max' => 'O campo nome deve ter no maximo 40 caracteres.',
                'uf.min' => 'O campo uf deve ter no minimo dois caracteres.',
                'uf.max' => 'O campo uf deve ter no maximo dois caracteres.',
                'email.email' => 'O campo e-mail não foi preenchido corretamente.',
            ];
            $request->validate($regras, $feedback);

            $fornecedor = new Fornecedor();
            $fornecedor->create($request->all());

            $msg = 'Cadastro efetuado com sucesso!';
        }

        return view('app.fornecedor.adicionar', ['msg' => $msg]);
    }
}
