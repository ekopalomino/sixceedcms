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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users','Backend\UserManagementController@userIndex')->name('user.index');
Route::get('/users/edit/{id}','Backend\UserManagementController@userEdit')->name('user.edit');
Route::post('/users/store','Backend\UserManagementController@userStore')->name('user.store');
Route::post('users/update/{id}','Backend\UserManagementController@userUpdate')->name('user.update');
Route::post('users/suspend/{id}','Backend\UserManagementController@userDestroy')->name('user.destroy');
