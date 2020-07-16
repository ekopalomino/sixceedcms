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

    Route::get('/users','Backend\UserManagementController@userIndex')->name('user.index');
    Route::get('/users/edit/{id}','Backend\UserManagementController@userEdit')->name('user.edit');
    Route::post('/users/store','Backend\UserManagementController@userStore')->name('user.store');
    Route::post('users/update/{id}','Backend\UserManagementController@userUpdate')->name('user.update');
    Route::post('users/suspend/{id}','Backend\UserManagementController@userDestroy')->name('user.destroy');
    Route::get('/roles','Backend\UserManagementController@rolesIndex')->name('roles.index');
    Route::get('/roles/create','Backend\UserManagementController@roleCreate')->name('roles.create');
    Route::get('/roles/edit/{id}','Backend\UserManagementController@roleEdit')->name('roles.edit');
    Route::post('/roles/store','Backend\UserManagementController@roleStore')->name('roles.store');
    Route::post('roles/update/{id}','Backend\UserManagementController@roleUpdate')->name('roles.update');
    Route::post('roles/suspend/{id}','Backend\UserManagementController@roleDestroy')->name('roles.destroy');
    Route::get('/activity-log','Backend\UserManagementController@logActivities')->name('log.index');

    Route::get('/masterdata/countries','Backend\MasterDataController@countryIndex')->name('country.index');
    Route::post('/masterdata/countries/store','Backend\MasterDataController@countryStore')->name('country.store');
    Route::get('/masterdata/countries/edit/{id}','Backend\MasterDataController@countryEdit')->name('user.edit');
    Route::post('/masterdata/countries/update/{id}','Backend\MasterDataController@countryUpdate')->name('country.update');
    Route::post('/masterdata/countries/delete/{id}','Backend\MasterDataController@countryDestroy')->name('country.destroy');
    Route::get('/masterdata/region','Backend\MasterDataController@regionIndex')->name('region.index');
    Route::post('/masterdata/region/store','Backend\MasterDataController@regionStore')->name('region.store');
    Route::get('/masterdata/region/edit/{id}','Backend\MasterDataController@regionEdit')->name('region.edit');
    Route::post('/masterdata/region/update/{id}','Backend\MasterDataController@regionUpdate')->name('region.update');
    Route::post('/masterdata/region/delete/{id}','Backend\MasterDataController@regionDestroy')->name('region.destroy');
    Route::get('/masterdata/cities','Backend\MasterDataController@cityIndex')->name('city.index');
    Route::post('/masterdata/cities/store','Backend\MasterDataController@cityStore')->name('city.store');
    Route::get('/masterdata/cities/edit/{id}','Backend\MasterDataController@cityEdit')->name('city.edit');
    Route::post('/masterdata/cities/update/{id}','Backend\MasterDataController@cityUpdate')->name('city.update');
    Route::post('/masterdata/cities/delete/{id}','Backend\MasterDataController@cityDestroy')->name('city.destroy');

    Route::get('/konten/media/berita-video','Backend\ContentManagementController@videoIndex')->name('video.index');
    Route::post('/konten/media/berita-video/store','Backend\ContentManagementController@videoStore')->name('video.store');
    Route::get('/konten/media/berita-video/show/{id}','Backend\ContentManagementController@videoShow')->name('video.show');
    Route::get('/konten/media/berita-video/edit/{id}','Backend\ContentManagementController@videoEdit')->name('video.edit');
    Route::post('/konten/media/berita-video/update/{id}','Backend\ContentManagementController@videoUpdate')->name('video.update');
    Route::post('/konten/media/berita-video/delete/{id}','Backend\ContentManagementController@videoDestroy')->name('video.destroy');
});
/*Route::get('/home', 'HomeController@index')->name('home');*/

