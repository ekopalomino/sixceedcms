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
    Route::get('/masterdata/tugas-dan-fungsi','Backend\MasterDataController@dutyCatIndex')->name('dutycat.index');
    Route::post('/masterdata/tugas-dan-fungsi/store','Backend\MasterDataController@dutyCatStore')->name('dutycat.store');
    Route::get('/masterdata/tugas-dan-fungsi/edit/{id}','Backend\MasterDataController@dutyCatEdit')->name('dutycat.edit');
    Route::post('/masterdata/tugas-dan-fungsi/update/{id}','Backend\MasterDataController@dutyCatUpdate')->name('dutycat.update');
    Route::post('/masterdata/tugas-dan-fungsi/delete/{id}','Backend\MasterDataController@dutyCatDestroy')->name('dutycat.destroy');
    Route::get('/masterdata/kategori-artikel','Backend\MasterDataController@articleCategoryIndex')->name('articlecat.index');
    Route::post('/masterdata/kategori-artikel/store','Backend\MasterDataController@articleCategoryStore')->name('articlecat.store');
    Route::get('/masterdata/kategori-artikel/edit/{id}','Backend\MasterDataController@articleCategoryEdit')->name('articlecat.edit');
    Route::post('/masterdata/kategori-artikel/update/{id}','Backend\MasterDataController@articleCategoryUpdate')->name('articlecat.update');
    Route::post('/masterdata/kategori-artikel/delete/{id}','Backend\MasterDataController@articleCategoryDelete')->name('articlecat.destroy');
    Route::get('/masterdata/kategori-faq','Backend\MasterDataController@faqCategoryIndex')->name('faqcat.index');
    Route::post('/masterdata/kategori-faq/store','Backend\MasterDataController@faqCategoryStore')->name('faqcat.store');
    Route::get('/masterdata/kategori-faq/edit/{id}','Backend\MasterDataController@faqCategoryEdit')->name('faqcat.edit');
    Route::post('/masterdata/kategori-faq/update/{id}','Backend\MasterDataController@faqCategoryUpdate')->name('faqcat.update');
    Route::post('/masterdata/kategori-faq/delete/{id}','Backend\MasterDataController@faqCategoryDelete')->name('faqcat.destroy');

    Route::get('/konten/media/berita-video','Backend\ContentManagementController@videoIndex')->name('video.index');
    Route::post('/konten/media/berita-video/store','Backend\ContentManagementController@videoStore')->name('video.store');
    Route::get('/konten/media/berita-video/show/{id}','Backend\ContentManagementController@videoShow')->name('video.show');
    Route::get('/konten/media/berita-video/edit/{id}','Backend\ContentManagementController@videoEdit')->name('video.edit');
    Route::post('/konten/media/berita-video/update/{id}','Backend\ContentManagementController@videoUpdate')->name('video.update');
    Route::post('/konten/media/berita-video/delete/{id}','Backend\ContentManagementController@videoDestroy')->name('video.destroy');
    Route::get('/konten/media/berita-foto','Backend\ContentManagementController@albumIndex')->name('foto.index');

    Route::get('/konten/banner-depan','Backend\ContentManagementController@frontBannerIndex')->name('fnban.index');
    Route::post('/konten/banner-depan/store','Backend\ContentManagementController@frontBannerStore')->name('fnban.store');
    Route::get('/konten/banner-depan/edit/{id}','Backend\ContentManagementController@frontBannerEdit')->name('fnban.edit');
    Route::post('/konten/banner-depan/update/{id}','Backend\ContentManagementController@frontBannerUpdate')->name('fnban.update');
    Route::post('/konten/banner-depan/delete/{id}','Backend\ContentManagementController@frontBannerDestroy')->name('fnban.destroy');

    Route::get('/konten/publikasi-depan','Backend\ContentManagementController@frontPubIndex')->name('fnpub.index');
    Route::post('/konten/publikasi-depan/store','Backend\ContentManagementController@frontPubStore')->name('fnpub.store');
    Route::get('/konten/publikasi-depan/edit/{id}','Backend\ContentManagementController@frontPubEdit')->name('fnpub.edit');
    Route::post('/konten/publikasi-depan/update/{id}','Backend\ContentManagementController@frontPubUpdate')->name('fnpub.update');
    Route::post('/konten/publikasi-depan/delete/{id}','Backend\ContentManagementController@frontPubDestroy')->name('fnpub.destroy');

    Route::get('/konten/tentang-kami/pesan','Backend\ContentManagementController@aboutIndex')->name('about.index');
    Route::get('/konten/tentang-kami/pesan/create','Backend\ContentManagementController@aboutCreate')->name('about.create');
    Route::post('/konten/tentang-kami/pesan/store','Backend\ContentManagementController@aboutStore')->name('about.store');
    Route::post('/konten/tentang-kami/pesan/publish/{id}','Backend\ContentManagementController@aboutPublished')->name('about.publish');
    Route::get('/konten/tentang-kami/pesan/edit/{id}','Backend\ContentManagementController@aboutEdit')->name('about.edit');
    Route::post('/konten/tentang-kami/pesan/update/{id}','Backend\ContentManagementController@aboutUpdate')->name('about.update');
    Route::post('/konten/tentang-kami/pesan/delete/{id}','Backend\ContentManagementController@aboutDestroy')->name('about.destroy');

    Route::get('/konten/tentang-kami/tugas-dan-fungsi','Backend\ContentManagementController@dutyIndex')->name('duty.index');
    Route::get('/konten/tentang-kami/tugas-dan-fungsi/create','Backend\ContentManagementController@dutyCreate')->name('duty.create');
    Route::post('/konten/tentang-kami/tugas-dan-fungsi/store','Backend\ContentManagementController@dutyStore')->name('duty.store');
    Route::get('/konten/tentang-kami/tugas-dan-fungsi/edit/{id}','Backend\ContentManagementController@dutyEdit')->name('duty.edit');
    Route::post('/konten/tentang-kami/tugas-dan-fungsi/update/{id}','Backend\ContentManagementController@dutyUpdate')->name('duty.update');
    Route::post('/konten/tentang-kami/tugas-dan-fungsi/delete/{id}','Backend\ContentManagementController@dutyDestroy')->name('duty.destroy');

    Route::get('/konten/faq','Backend\ContentManagementController@faqIndex')->name('faq.index');
    Route::get('/konten/faq/create','Backend\ContentManagementController@faqCreate')->name('faq.create');
    Route::post('/konten/faq/store','Backend\ContentManagementController@faqStore')->name('faq.store');
    Route::get('/konten/faq/edit/{id}','Backend\ContentManagementController@faqEdit')->name('faq.edit');
    Route::post('/konten/faq/update/{id}','Backend\ContentManagementController@faqUpdate')->name('faq.update');
    Route::post('/konten/faq/delete/{id}','Backend\ContentManagementController@faqDestroy')->name('faq.destroy');




    Route::get('/konten/artikel','Backend\ContentManagementController@postIndex')->name('post.index');
    Route::get('/konten/artikel/cari','Backend\ContentManagementController@postSearchForm')->name('postSearch.index');
    Route::post('/konten/artikel/cari/proses','Backend\ContentManagementController@postQuery')->name('postQuery.index');
    Route::get('/konten/artikel/tulisan/create','Backend\ContentManagementController@postCreate')->name('write.create');
    Route::get('/konten/artikel/upload/create','Backend\ContentManagementController@uploadCreate')->name('upload.create');
    Route::post('/konten/artikel/store','Backend\ContentManagementController@postStore')->name('post.store');
    Route::get('/konten/artikel/edit/{id}','Backend\ContentManagementController@postEdit')->name('post.edit');
    Route::post('/konten/artikel/update/{id}','Backend\ContentManagementController@postUpdate')->name('post.update');
    Route::post('/konten/artikel/publish/{id}','Backend\ContentManagementController@postPublish')->name('post.publish');
    Route::post('/konten/artikel/archive/{id}','Backend\ContentManagementController@postArchive')->name('post.archive');
    Route::post('/konten/artikel/delete/{id}','Backend\ContentManagementController@postDestroy')->name('post.destroy');
});
/*Route::get('/home', 'HomeController@index')->name('home');*/

