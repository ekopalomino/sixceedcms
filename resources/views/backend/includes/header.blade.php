<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{ route('config.index') }}" class="nav-link {{set_active(['config.index','user.index','roles.index','roles.create','log.index','country.index','region.index','city.index','dutycat.index','articlecat.index','faqcat.index']) }}">Konfig</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="{{route('main.index') }}" class="nav-link {{set_active(['main.index']) }}">Situs Utama</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen PEN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen PPI</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen PLN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen PKTN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen PDN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Ditjen Daglu</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">PPSDK</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">BPPP</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Rovodag</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">KPPI</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">KADI</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="#" class="nav-link ">Itjen</a>
		</li>
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