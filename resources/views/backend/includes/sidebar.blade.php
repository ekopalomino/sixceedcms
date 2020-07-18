<aside class="main-sidebar sidebar-dark-primary elevation-4" style="font-size: 14px;">
	<a href="index3.html" class="brand-link">
	</a>
    <div class="sidebar">
    	<div class="user-panel mt-3 pb-3 mb-3 d-flex">
	        <div class="image">
				<img src="{{ asset('bower_components/admin-lte/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
			</div>
	        <div class="info">
	           <a href="{{ route('main.index') }}" class="d-block">{{{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}}</a>
	        </div>
	    </div>
	    <nav class="mt-2">
	    	<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
	    	@if(\Route::is(['config.index']))
			<li class="nav-item {{set_open('config.index') }}">
	    		<a href="{{ route('config.index') }}" class="nav-link {{set_active('config.index') }}">
					<i class="nav-icon fas fa-tachometer-alt"></i>
					<p>
						Beranda
					</p>
				</a>
			</li>
			@endif
			<li class="nav-item">
				<a href="" class="nav-link ">
					<i class="nav-icon fas fa-cog"></i>
					<p>
						Konfigurasi Umum
					</p>
				</a>
			</li>
			<li class="nav-item has-treeview {{set_open(['user.index','roles.index','roles.create','log.index']) }}">
				<a href="#" class="nav-link {{set_active(['user.index','roles.index','roles.create','log.index']) }}">
					<i class="nav-icon fas fa-users"></i>
					<p>
						Manajemen Pengguna
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="{{ route('user.index') }}" class="nav-link {{set_active('user.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Database Pengguna</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('roles.index') }}" class="nav-link {{set_active(['roles.index','roles.create']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Hak Akses</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('log.index') }}" class="nav-link {{set_active('log.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Log Aktifitas</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview ">
				<a href="#" class="nav-link ">
					<i class="nav-icon fas fa-users"></i>
					<p>
						Perawatan
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="far fa-circle nav-icon"></i>
							<p>Cadangkan Data</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="far fa-circle nav-icon"></i>
							<p>Perawatan Situs</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index']) }}">
				<a href="#" class="nav-link {{set_active(['country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index']) }}">
					<i class="nav-icon fas fa-database"></i>
					<p>
						Master Data
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['country.index','region.index','city.index']) }}">
						<a href="" class="nav-link {{set_active(['country.index','region.index','city.index']) }}">
							<i class="right fas fa-angle-left"></i>
							<p>Wilayah</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('country.index') }}" class="nav-link {{set_active('country.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Negara</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('region.index') }}" class="nav-link {{set_active('region.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Provinsi</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('city.index') }}" class="nav-link {{set_active('city.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Kota</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item {{set_open(['dutycat.index','articlecat.index','faqcat.index']) }}">
						<a href="" class="nav-link {{set_active(['dutycat.index','articlecat.index','faqcat.index']) }}">
							<i class="right fas fa-angle-left"></i>
							<p>Kategori</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('dutycat.index') }}" class="nav-link {{set_active('dutycat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Tugas & Fungsi</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('articlecat.index') }}" class="nav-link {{set_active('articlecat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Artikel</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('faqcat.index') }}" class="nav-link {{set_active('faqcat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>FAQ</p>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['foto.index','video.index']) }}">
				<a href="#" class="nav-link {{set_active(['foto.index','video.index']) }}">
					<i class="nav-icon fas fa-newspaper"></i>
					<p>
						Konten
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview {{set_open(['foto.index','video.index']) }}">
					<li class="nav-item {{set_open(['foto.index','video.index']) }}">
						<a href="" class="nav-link {{set_active(['foto.index','video.index']) }}">
							<i class="right fas fa-angle-left"></i>
							<p>Media</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('foto.index') }}" class="nav-link {{set_active(['foto.index']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Berita Foto</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('video.index') }}" class="nav-link {{set_active('video.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Berita Video</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-right"></i>
							<p>Banner Depan</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-right"></i>
							<p>Publikasi Depan</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-left"></i>
							<p>Tentang Kami</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Pesan</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Tugas & Fungsi</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Transparansi Kerja</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Laporan Tahunan</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Pejabat Kementerian</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Struktur Organisasi</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-right"></i>
							<p>FAQ</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-right"></i>
							<p>Kegiatan</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-left"></i>
							<p>Artikel</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Tulisan</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Upload</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="" class="nav-link ">
							<i class="right fas fa-angle-left"></i>
							<p>Perwakilan Dagang</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Pejabat</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Kantor</p>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="nav-item ">
				<a href="" class="nav-link ">
					<i class="nav-icon far fa-comments"></i>
					<p>Pesan</p>
				</a>
			</li>
		</nav>
    </div>
</aside>

            	
