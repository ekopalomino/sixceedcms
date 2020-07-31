<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta http-equiv="x-ua-compatible" content="ie=edge">
  	<title>@yield('header.title')</title>
  	<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/fontawesome-free/css/all.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/dist/css/adminlte.min.css') }}">
  	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  	<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
  	<link rel="stylesheet" href="{{ asset('bower_components/admin-lte/plugins/toastr/toastr.min.css') }}">
	@yield('header.plugins')
  	@yield('header.styles')
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		@include('backend.includes.header')
    @include('backend.includes.sidebar')
		<div class="content-wrapper" style="font-size: 14px;">
			@yield('content')
		</div>
		<div class="modal fade" id="modalMd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
			<h4 class="modal-title" id="modalMdTitle"></h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="modalError"></div>
            <div id="modalMdContent"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade bs-modal-lg" id="modalLg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
			<h4 class="modal-title" id="modalLgTitle"></h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
            <div class="modalError"></div>
            <div id="modalLgContent"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade bs-modal-xl" id="modalXl" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="modalXlTitle"></h4>
          </div>
          <div class="modal-body">
            <div class="modalError"></div>
            <div id="modalXlContent"></div>
          </div>
        </div>
      </div>
    </div>
    
		@include('backend.includes.footer')
	</div>
  <script src="{{ asset('bower_components/admin-lte/plugins/jquery/jquery.min.js') }}"></script>
	<script src="{{ asset('bower_components/admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
	<script src="{{ asset('bower_components/admin-lte/dist/js/adminlte.min.js') }}"></script>
	<script src="{{ asset('bower_components/admin-lte/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
	<script src="{{ asset('bower_components/admin-lte/plugins/toastr/toastr.min.js') }}"></script>
	<script src="{{ asset('js/admin.js') }}" type="text/javascript"></script>
	@yield('footer.scripts') 
	<script type="text/javascript">
		@if(Session::has('message'))
		var type = "{{ Session::get('alert-type', 'info') }}";
        	switch(type){
            	case 'info':
                	toastr.info("{{ Session::get('message') }}");
                	break;      
            	case 'warning':
                	toastr.warning("{{ Session::get('message') }}");
                	break;
           		case 'success':
                	toastr.success("{{ Session::get('message') }}");
                	break;
            	case 'error':
                	toastr.error("{{ Session::get('message') }}");
                	break;
        	}
    	@endif
	</script>
</body>
</html>


