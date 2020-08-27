<head>
	<title>{{ trans('app.website_title') }} | @yield('pageTitle')</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="{{ trans('app.description') }}" />
    <meta name="keywords" content= "Kementerian Perdagangan, kemendag, Kementerian, Perdagangan, Indonesia @yield('keywords')">
	<meta name="author" content="Pusat Data dan Sistem Informasi Kementerian Perdagangan Indonesia">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="shortcut icon" href="{{ asset('preview_frontend/favicon.png') }}">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
	<script type="text/javascript" src="{{ asset('preview_frontend/global/plugins/jquery/jquery.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('preview_frontend/global/css/navbar/webslidemenu.js') }}"></script>
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/bootstrap/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/style.css') }}">
	<link href="{{ asset('preview_frontend/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('preview_frontend/global/plugins/bootstrap-modal/css/bootstrap-modal.css') }}" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/headers/header-v4.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/footers/footer-v1.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/animate.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/line-icons/line-icons.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/font-awesome/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/owl-carousel/owl-carousel/owl.carousel.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/plugins/fancybox/source/jquery.fancybox.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/theme-colors/default.css') }}" id="style_color">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/theme-skins/dark.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/custom.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/navbar/webslidemenu.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/kemendag.css') }}">
	<link rel="stylesheet" href="{{ asset('preview_frontend/css/tabel.css') }}">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
	<style type="text/css">
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#myModal").modal('show');
		});	
	</script>
</head>