<?php

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

Route::get('/', function () {
    return view('backend.pages.login');
});

Auth::routes(['register' => false]);
Route::group(['prefix' => 'apps', 'middleware' => ['auth']], function() {
    Route::get('/config','Backend\HomeController@adminIndex')->name('config.index');
    Route::get('/main','Backend\HomeController@mainIndex')->name('main.index');
    Route::get('/pengembangan-ekspor-nasional','Backend\HomeController@penIndex')->name('pen.index');
    Route::get('/perundingan-perdagangan-internasional','Backend\HomeController@ppiIndex')->name('ppi.index');
    Route::get('/perdagangan-luar-negeri','Backend\HomeController@plnIndex')->name('pln.index');
    Route::get('/perlindungan-konsumen-tertib-niaga','Backend\HomeController@pktnIndex')->name('pktn.index');
    Route::get('/perdagangan-dalam-negeri','Backend\HomeController@pdnIndex')->name('pdn.index');
});
/*Route::get('/home', 'HomeController@index')->name('home');*/
Route::get('/users','Backend\UserManagementController@userIndex')->name('user.index');
Route::get('/users/edit/{id}','Backend\UserManagementController@userEdit')->name('user.edit');
Route::post('/users/store','Backend\UserManagementController@userStore')->name('user.store');
Route::post('users/update/{id}','Backend\UserManagementController@userUpdate')->name('user.update');
Route::post('users/suspend/{id}','Backend\UserManagementController@userDestroy')->name('user.destroy');
