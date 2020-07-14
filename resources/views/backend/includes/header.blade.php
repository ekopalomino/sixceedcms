<nav class="main-header navbar navbar-expand navbar-white navbar-light">
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Config</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Main Site</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Ditjen PEN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Ditjen PPI</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Ditjen PLN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Ditjen PKTN</a>
		</li>
		<li class="nav-item d-none d-sm-inline-block">
			<a href="" class="nav-link ">Ditjen PDN</a>
		</li>
	</ul>
	<ul class="navbar-nav ml-auto">
		<li class="nav-item dropdown">
			<a class="nav-link" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
				<i class="fas fa-sign-out-alt"></i> Sign Out
			</a>
			<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
				@csrf
			</form>
		</li>
	</ul>
</nav>