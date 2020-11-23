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

Auth::routes(['register' => true]);
Route::group(['prefix' => 'cms', 'middleware' => ['auth']], function() {
    Route::get('/config','Backend\HomeController@adminIndex')->name('config.index'); 
    Route::get('/main','Backend\HomeController@mainIndex')->name('main.index');
    Route::get('/pengembangan-ekspor-nasional','Backend\DashboardController@djpen')->name('pen.index');
    Route::get('/perundingan-perdagangan-internasional','Backend\DashboardController@ppi')->name('ppi.index');
    Route::get('/perdagangan-luar-negeri','Backend\DashboardController@daglu')->name('pln.index');
    Route::get('/perlindungan-konsumen-tertib-niaga','Backend\DashboardController@pktn')->name('pktn.index');
    Route::get('/perdagangan-dalam-negeri','Backend\DashboardController@dagri')->name('pdn.index');
    Route::get('/pusat-pengembangan-sumber-daya-kemetrologian','Backend\DashboardController@ppsdk')->name('ppsdk.index');
    Route::get('/badan-pengembangan-pengkajian-perdagangan','Backend\DashboardController@bppp')->name('bppp.index');
    Route::get('/inspektorat-jenderal','Backend\DashboardController@itjen')->name('itjen.index');
    Route::get('/pengamanan-perdagangan','Backend\DashboardController@kpp')->name('kpp.index');
    Route::get('/anti-dumping','Backend\DashboardController@kadi')->name('kadi.index');

    Route::get('/pengguna','Backend\UserManagementController@userIndex')->name('user.index');
    Route::get('/pengguna/menu-saya','Backend\UserManagementController@userMenu')->name('myMenu.index');
    Route::get('/pengguna/edit/{id}','Backend\UserManagementController@userEdit')->name('user.edit');
    Route::post('/pengguna/store','Backend\UserManagementController@userStore')->name('user.store');
    Route::post('pengguna/update/{id}','Backend\UserManagementController@userUpdate')->name('user.update');
    Route::post('pengguna/suspend/{id}','Backend\UserManagementController@userDestroy')->name('user.destroy');
    Route::post('/pengguna/menu-saya/ubah-password','Backend\UserManagementController@updatePassword')->name('myPassword.update');
    Route::post('/pengguna/menu-saya/ganti-avatar','Backend\UserManagementController@updateAvatar')->name('myAvatar.update');
    Route::get('/hak-akses','Backend\UserManagementController@rolesIndex')->name('roles.index');
    Route::get('/hak-akses/create','Backend\UserManagementController@roleCreate')->name('roles.create');
    Route::get('/hak-akses/edit/{id}','Backend\UserManagementController@roleEdit')->name('roles.edit');
    Route::post('/hak-akses/store','Backend\UserManagementController@roleStore')->name('roles.store');
    Route::post('hak-akses/update/{id}','Backend\UserManagementController@roleUpdate')->name('roles.update');
    Route::post('hak-akses/suspend/{id}','Backend\UserManagementController@roleDestroy')->name('roles.destroy');
    Route::get('/log-aktifitas','Backend\UserManagementController@logActivities')->name('log.index');

    Route::get('/backup','Backend\MaintenanceController@backupIndex')->name('backup.index');
    Route::get('/backup/create','Backend\MaintenanceController@backupCreate')->name('backup.create');

    Route::get('/masterdata/negara','Backend\MasterDataController@countryIndex')->name('country.index');
    Route::post('/masterdata/negara/store','Backend\MasterDataController@countryStore')->name('country.store');
    Route::get('/masterdata/negara/edit/{id}','Backend\MasterDataController@countryEdit')->name('user.edit');
    Route::post('/masterdata/negara/update/{id}','Backend\MasterDataController@countryUpdate')->name('country.update');
    Route::post('/masterdata/negara/delete/{id}','Backend\MasterDataController@countryDestroy')->name('country.destroy');

    Route::get('/masterdata/provinsi','Backend\MasterDataController@regionIndex')->name('region.index');
    Route::post('/masterdata/provinsi/store','Backend\MasterDataController@regionStore')->name('region.store');
    Route::get('/masterdata/provinsi/edit/{id}','Backend\MasterDataController@regionEdit')->name('region.edit');
    Route::post('/masterdata/provinsi/update/{id}','Backend\MasterDataController@regionUpdate')->name('region.update');
    Route::post('/masterdata/provinsi/delete/{id}','Backend\MasterDataController@regionDestroy')->name('region.destroy');

    Route::get('/masterdata/kota','Backend\MasterDataController@cityIndex')->name('city.index');
    Route::post('/masterdata/kota/store','Backend\MasterDataController@cityStore')->name('city.store');
    Route::get('/masterdata/kota/edit/{id}','Backend\MasterDataController@cityEdit')->name('city.edit');
    Route::post('/masterdata/kota/update/{id}','Backend\MasterDataController@cityUpdate')->name('city.update');
    Route::post('/masterdata/kota/delete/{id}','Backend\MasterDataController@cityDestroy')->name('city.destroy');

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

    Route::get('/masterdata/unit-kerja','Backend\MasterDataController@unitIndex')->name('unit.index');
    Route::post('/masterdata/unit-kerja/store','Backend\MasterDataController@unitStore')->name('unit.store');
    Route::get('/masterdata/unit-kerja/edit/{id}','Backend\MasterDataController@unitEdit')->name('unit.edit');
    Route::post('/masterdata/unit-kerja/update/{id}','Backend\MasterDataController@unitUpdate')->name('unit.update');
    Route::post('/masterdata/unit-kerja/delete/{id}','Backend\MasterDataController@unitDestroy')->name('unit.destroy');

    Route::get('/masterdata/kategori-publikasi','Backend\MasterDataController@pubIndex')->name('pubCat.index');
    Route::post('/masterdata/kategori-publikasi/store','Backend\MasterDataController@pubStore')->name('pubCat.store');
    Route::get('/masterdata/kategori-publikasi/edit/{id}','Backend\MasterDataController@pubEdit')->name('pubCat.edit');
    Route::post('/masterdata/kategori-publikasi/update/{id}','Backend\MasterDataController@pubUpdate')->name('pubCat.update');
    Route::post('/masterdata/kategori-publikasi/delete/{id}','Backend\MasterDataController@pubDestroy')->name('pubCat.destroy');

    Route::get('/masterdata/struktur-menu','Backend\MasterDataController@menuIndex')->name('menu.index');

    Route::get('/konten/media/berita-video','Backend\ContentManagementController@videoIndex')->name('video.index');
    Route::post('/konten/media/berita-video/store','Backend\ContentManagementController@videoStore')->name('video.store');
    Route::get('/konten/media/berita-video/show/{id}','Backend\ContentManagementController@videoShow')->name('video.show');
    Route::get('/konten/media/berita-video/edit/{id}','Backend\ContentManagementController@videoEdit')->name('video.edit');
    Route::post('/konten/media/berita-video/update/{id}','Backend\ContentManagementController@videoUpdate')->name('video.update');
    Route::post('/konten/media/berita-video/delete/{id}','Backend\ContentManagementController@videoDestroy')->name('video.destroy');

    Route::get('/konten/media/berita-foto','Backend\ContentManagementController@albumIndex')->name('foto.index');
    Route::post('/konten/media/berita-foto/store','Backend\ContentManagementController@albumStore')->name('album.store');
    Route::get('konten/media/berita-foto/show/{id}','Backend\ContentManagementController@albumShow')->name('album.show');
    Route::post('/konten/media/berita-foto/delete/{id}','Backend\ContentManagementController@albumDelete')->name('album.destroy');
    Route::get('konten/media/berita-foto/konten/tambah/{id}','Backend\ContentManagementController@imageCreate')->name('image.create');
    Route::post('/konten/media/berita-foto/konten/store','Backend\ContentManagementController@imageStore')->name('image.store');
    Route::post('/konten/media/berita-foto/konten/delete/{id}','Backend\ContentManagementController@imageDelete')->name('image.destroy');

    Route::get('/konten/banner-depan','Backend\ContentManagementController@frontBannerIndex')->name('fnban.index');
    Route::post('/konten/banner-depan/store','Backend\ContentManagementController@frontBannerStore')->name('fnban.store');
    Route::get('/konten/banner-depan/edit/{id}','Backend\ContentManagementController@frontBannerEdit')->name('fnban.edit');
    Route::post('/konten/banner-depan/update/{id}','Backend\ContentManagementController@frontBannerUpdate')->name('fnban.update');
    Route::post('/konten/banner-depan/disable/{id}','Backend\ContentManagementController@frontBannerDeactivate')->name('fnban.disable');
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

    Route::get('/konten/kegiatan','Backend\ContentManagementController@eventIndex')->name('event.index');
    Route::get('/konten/kegiatan/create','Backend\ContentManagementController@eventCreate')->name('event.create');
    Route::post('/konten/kegiatan/store','Backend\ContentManagementController@eventStore')->name('event.store');
    Route::get('/konten/kegiatan/edit/{id}','Backend\ContentManagementController@eventEdit')->name('event.edit');
    Route::post('/konten/kegiatan/update/{id}','Backend\ContentManagementController@eventUpdate')->name('event.update');
    Route::get('/konten/kegiatan/dokumentasi/{id}','Backend\ContentManagementController@eventDocumentation')->name('eventDocs.create');
    Route::post('/konten/kegiatan/dokumentasi/store/{id}','Backend\ContentManagementController@eventDocumentationStore')->name('eventDocs.store');
    Route::post('/konten/kegiatan/dokumentasi/delete/{id}','Backend\ContentManagementController@eventDocumentationDestroy')->name('eventDocs.destroy');
    Route::post('/konten/kegiatan/delete/{id}','Backend\ContentManagementController@eventDestroy')->name('event.destroy');

    Route::get('/konten/artikel','Backend\ContentManagementController@postIndex')->name('post.index');
    Route::get('/konten/artikel/cari','Backend\ContentManagementController@postSearchForm')->name('postSearch.index');
    Route::post('/konten/artikel/cari/proses','Backend\ContentManagementController@postQuery')->name('postQuery.index');
    Route::get('/konten/artikel/create','Backend\ContentManagementController@postCreate')->name('post.create');
    Route::post('/konten/artikel/store','Backend\ContentManagementController@postStore')->name('post.store');
    Route::get('/konten/artikel/edit/{id}','Backend\ContentManagementController@postEdit')->name('post.edit');
    Route::post('/konten/artikel/update/{id}','Backend\ContentManagementController@postUpdate')->name('post.update');
    Route::post('/konten/artikel/publish/{id}','Backend\ContentManagementController@postPublish')->name('post.publish');
    Route::post('/konten/artikel/archive/{id}','Backend\ContentManagementController@postArchive')->name('post.archive');
    Route::post('/konten/artikel/delete/{id}','Backend\ContentManagementController@postDestroy')->name('post.destroy');
    Route::get('/konten/artikel/preview/{id}','Backend\ContentManagementController@postReview')->name('postReview.index');

    Route::get('/konten/pejabat','Backend\ContentManagementController@officialIndex')->name('official.index');
    Route::get('/konten/pejabat/create','Backend\ContentManagementController@officialCreate')->name('official.create');
    Route::post('/konten/pejabat/store','Backend\ContentManagementController@officialStore')->name('official.store');
    Route::get('/konten/pejabat/edit/{id}','Backend\ContentManagementController@officialEdit')->name('official.edit');
    Route::post('/konten/pejabat/update/{id}','Backend\ContentManagementController@officialUpdate')->name('official.update');
    Route::post('/konten/pejabat/delete/{id}','Backend\ContentManagementController@officialDestroy')->name('official.destroy');

    Route::get('/konten/kantor-perdagangan','Backend\ContentManagementController@regionalOffice')->name('regionalOffice.index');
    Route::get('/konten/kantor-perdagangan/create','Backend\ContentManagementController@regionalOfficeCreate')->name('regionalOffice.create');
    Route::post('/konten/kantor-perdagangan/store','Backend\ContentManagementController@regionalOfficeStore')->name('regionalOffice.store');
    Route::get('/konten/kantor-perdagangan/edit/{id}','Backend\ContentManagementController@regionalOfficeEdit')->name('regionalOffice.edit');
    Route::post('/konten/kantor-perdagangan/update/{id}','Backend\ContentManagementController@regionalOfficeUpdate')->name('regionalOffice.update');
    Route::post('/konten/kantor-perdagangan/delete/{id}','Backend\ContentManagementController@regionalOfficeDelete')->name('regionalOffice.destroy');

    Route::get('/konten/defina','Backend\ContentManagementController@definaIndex')->name('defina.index');
    Route::post('/konten/defina/store','Backend\ContentManagementController@definaStore')->name('defina.store');
    Route::get('/konten/defina/edit/{id}','Backend\ContentManagementController@definaEdit')->name('defina.edit');
    Route::post('/konten/defina/update/{id}','Backend\ContentManagementController@definaUpdate')->name('defina.update');
    Route::post('/konten/defina/delete/{id}','Backend\ContentManagementController@definaDelete')->name('defina.destroy');

    Route::get('/kontak-kami','Backend\ContentManagementController@messageIndex')->name('messageNew.index');
    Route::get('/konten/pejabat/create','Backend\ContentManagementController@officialCreate')->name('official.create');
    Route::post('/konten/pejabat/store','Backend\ContentManagementController@officialStore')->name('official.store');
    Route::get('/konten/pejabat/edit/{id}','Backend\ContentManagementController@officialEdit')->name('official.edit');
    Route::post('/konten/pejabat/update/{id}','Backend\ContentManagementController@officialUpdate')->name('official.update');
    Route::post('/konten/pejabat/delete/{id}','Backend\ContentManagementController@officialDestroy')->name('official.destroy');

    
});

