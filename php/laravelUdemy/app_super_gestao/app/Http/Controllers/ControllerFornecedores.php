<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ControllerFornecedores extends Controller
{
    public function index()
    {
        //$fornecedores = ['Fornecedor 1', 'asasd','Fornecedor 1', 'asasd'];

        $fornecedores = [
            0 => ['nome' => 'fornecedor 1', 'status' => 'S'],
            1 => ['nome' => 'fornecedor 2', 'status' => 'N'],
        ];

        return view('app.fornecedores.index', compact('fornecedores'));
    }
}
