<div class="header-v4">  
	<!-- Navbar -->
	<div class="navbar navbar-default mega-menu" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
		<div class="container"  style="border-left:1px solid #e5e5e5;;border-right:1px solid #e5e5e5;;">
			<div class="row" style="margin-left: 0px; margin-right: 0px;">
				<div class="col-md-4 col-xs-5 col-sm-4">
					<a class="navbar-brand" href="/">
						<img id="logo-header" src="{{ asset('preview_frontend/img/logo-kemendag.jpg') }}" alt="Logo" class="img img-responsive logo-kemendag" style="max-width: 113px;">
					</a>
				</div>
				<div class="col-md-4">
					<!-- Space Untuk Isi Konten di Header -->
				</div>
				<div class="col-md-4 float-lang">
					<div class="form-inline pull-right-md head" style="margin-top: 20px;">
						<div class="date-sec">
							<ul class="lang-font list-inline top-v1-contacts">
								<li>
									{{ Jenssegers\Date\Date::now()->format('l, d F Y')}}
								</li>
							</ul>
						</div>
						<div class="list-lang">
							<ul class="list-inline top-v1-data">
								<li class="lang-font" style="margin: -1px 1px 1px 1px;line-height: 8px;border-right: 1px solid  #a9a9a9;padding: 4px;float: left;"><a href=""><img src="/preview_frontend/img/icons/indonesia.png" width="15" height="15" alt="Bahasa Indonesia"/> Bahasa Indonesia</a></li>
								<li class="lang-font" style="margin: -1px 1px 1px 1px;line-height: 8px;padding: 4px;float: left;"><a href=""><img src="/preview_frontend/img/icons/united-kingdom.png" width=15" height="15" alt="English"/> English</a></li>
							</ul>
						</div>
						</br>
						<div class="input-group" style="margin-top:10px;margin-bottom: 30px;">
							<div class="clearfix"></div>
								<form method="get" action="" class="form-inline mr-auto">
									@csrf
						      		<input type="text" name="query" value="" class="form-control search-bar-home" placeholder="Search..." aria-label="Search">
							        	<button class="btn btn-default" type="submit" style="padding: 6.2px 12px;"><i class="fa fa-search" aria-hidden="true" ></i></button>
						      	</form>
						    </div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="container menuback" style="border-left: 1px solid #e5e5e5;;border-right: 1px solid #e5e5e5;;color: #ffffff;">
				<nav class="wsdownmenu clearfix">
	                <ul class="wsdown-mobile wsdownmenu-list">
    	            	<li><a href="/"><i class="fa fa-home"></i><span class="hometext">&nbsp;Home</span></a></li>
                  		<li ><a href="">{{ trans('menu.profil') }}</a>
	                    	<ul class="wsdownmenu-submenu">
	                      		<li><a href="">{{ trans('menu.sejarah') }}</a></li>
	                      		<li><a href="">{{ trans('menu.tugas') }}</a></li>
	                      		<li><a href="">{{ trans('menu.visi') }}</a></li>
	                      		<li><a href="">{{ trans('menu.struktur') }}</a></li>          
	                    	</ul>
                  		</li>
                    	<li >
                    		<a href="">{{ trans('menu.berita') }}</a>
                    	</li>
                   		<li >
                    		<a href="">{{ trans('menu.diklat-announce') }}</a>
                    	</li>
                    	<li ><a href="">{{ trans('menu.aturan') }}</a>
                    		<ul class="wsdownmenu-submenu">
	                      		<li><a href="">{{ trans('menu.undang-undang') }}</a></li>
	                      		<li><a href="">{{ trans('menu.aturan-pmr') }}</a></li>
	                      		<li><a href="">{{ trans('menu.aturan-pres') }}</a></li>
	                      		<li><a href="">{{ trans('menu.aturan-men') }}</a></li>
	                      		<li><a href="">{{ trans('menu.aturan-lain') }}</a></li>          
	                    	</ul>
	                    </li>
	                    <li ><a href="">{{ trans('menu.publikasi') }}</a>
                    		<ul class="wsdownmenu-submenu">
	                      		<li><a href="">{{ trans('menu.pub-mag') }}</a></li>
	                      		<li><a href="">{{ trans('menu.oiml') }}</a></li>         
	                    	</ul>
	                    </li>
	                    <li >
                    		<a href="">{{ trans('menu.galeri') }}</a>
                    	</li>
                    	<li >
                    		<a href="">{{ trans('menu.kontak') }}</a>
                    	</li>	
                	</ul>
              	</nav>
            </div>
		</div>
	</div>
