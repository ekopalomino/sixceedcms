<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
		</li>
		@if((auth()->user()->site_id) == '35991cce-ca61-4d89-a3e3-d9e938dc4b2f')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{ route('config.index') }}" class="nav-link {{set_active(['config.index','user.index','roles.index','roles.create','log.index','country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index']) }}">Konfig</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '8689caab-d1d0-4b99-a814-d6e2d0b56361')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{route('main.index') }}" class="nav-link {{set_active(['main.index']) }}">CMS Website Kementerian Perdagangan Republik Indonesia</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == 'bc5397fc-f875-4326-846f-315e6e6fd0ba')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Direktorat Jenderal Pengembangan Ekspor Nasional</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '4c565b80-f7e9-4421-81be-a831ae48edf2')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Direktorat Jenderal Perundingan Perdagangan Internasional</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '745572a6-c3a9-491a-b069-966d9cfa7054')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{ route('pln.index') }}" class="nav-link {{set_active(['pln.index','myMenu.index','user.index','roles.index','roles.create','log.index','country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index','unit.index','pubCat.index','ppsdk.index','foto.index','image.create','video.index','fnban.index','fnpub.index','about.index','about.create','about.edit','duty.index','duty.create','duty.edit','strat.index','post.index','post.create','post.edit',
					'postSearch.index','postQuery.index','faq.index','faq.create','faq.edit','event.index','event.create','event.edit','eventDocs.create','official.index','official.create','official.edit','oiml.index','menu.index','regDagri.index']) }}">CMS Direktorat Jenderal Perdagangan Luar Negeri</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == 'e2fa0b3f-84e2-4046-ae68-fe5f987cbe7b')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '85cd37d3-e818-4e04-b294-3491feb60285')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{ route('pdn.index') }}" class="nav-link {{set_active(['pdn.index','myMenu.index','user.index','roles.index','roles.create','log.index','country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index','unit.index','pubCat.index','ppsdk.index','foto.index','image.create','video.index','fnban.index','fnpub.index','about.index','about.create','about.edit','duty.index','duty.create','duty.edit','strat.index','post.index','post.create','post.edit',
					'postSearch.index','postQuery.index','faq.index','faq.create','faq.edit','event.index','event.create','event.edit','official.index','official.create','official.edit','oiml.index','menu.index','regDagri.index']) }}">CMS Direktorat Jenderal Perdagangan Dalam Negeri</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '92876445-2b7c-4e2f-bb43-d3b71b608e4e')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{ route('ppsdk.index') }}" class="nav-link {{set_active(['myMenu.index','user.index','roles.index','roles.create','log.index','country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index','unit.index','pubCat.index','ppsdk.index','foto.index','image.create','video.index','fnban.index','fnpub.index','about.index','about.create','about.edit','duty.index','duty.create','duty.edit','strat.index','post.index','write.create','upload.create','post.edit',
					'postSearch.index','postQuery.index','faq.index','faq.create','faq.edit','event.index','event.create','event.edit','official.index','official.create','official.edit','oiml.index']) }}">CMS Pusat Pengembangan Sumber Daya Kemetrologian</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == '2da488d4-a8e7-499a-b6e7-360ff17f9585')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Badan Pengembangan Pengkajian Perdagangan</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == 'd59ba15e-5abf-4572-9992-64950d4f65ea')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Komite Pengamanan Perdagangan</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == 'ee5c63f5-58b4-4ca5-9acb-09de683f6549')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Komite Anti Dumping Indonesia</a>
		</li>
		@endif
		@if((auth()->user()->site_id) == 'a0fe8237-c432-4d27-8edd-669cb9719278')
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">CMS Inspektorat Jenderal</a>
		</li>
		@endif
	</ul>
	<ul class="navbar-nav ml-auto">
		<li class="nav-item dropdown">
			<a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
				<i class="fas fa-sign-out-alt"></i> Keluar
			</a>
			<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
				@csrf
			</form>
		</li>
	</ul>
</nav>