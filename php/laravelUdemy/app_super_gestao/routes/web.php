<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'PrincipalController@principal')->name('site.index')->middleware('log.acesso');
    
Route::get('/sobre', 'SobreController@sobrenos')->name('site.sobrenos');

Route::get('/contato', 'ContatoController@contato')->name('site.contato');
Route::post('/contato', 'ContatoController@salvar')->name('site.contato');

Route::get('/login', function(){ return 'Login'; })->name('site.login');

// Interno
Route::middleware('autenticacao:padrao,perfil')->prefix('/app')->group( function() {  
    Route::get('/clientes', function(){ return 'Clientes'; })->name('in.clientes');
    Route::get('/fornecedores', 'ControllerFornecedores@index')->name('in.fornecedores');
    Route::get('/produtos', function(){ return 'Produtos'; })->name('in.produtos');
});

Route::get('/test/{var1}/{var2}', 'ControllerTest@test');

/*
Route::get('/rota1', function(){ 
    echo "Rota1";
 })->name('site.rota1');

 Route::get('/rota2', function(){ 
    return redirect()->route('site.rota1');
 })->name('site.rota2');
*/

//Route::redirect('/rota2', '/rota1');

Route::fallback(function() {
    echo 'FallBack <a href="'.route('site.index').'">Voltar</a>';
});

