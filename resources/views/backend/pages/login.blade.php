<!DOCTYPE html>
<html lang="en">
<head>
	<title>Kementerian Perdagangan Republik Indonesia | BACKEND</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/png" href="{{ asset('assets/login_page/images/icons/favicon.ico') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/fonts/Linearicons-Free-v1.0.0/icon-font.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/animate/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/css-hamburgers/hamburgers.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/animsition/css/animsition.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/select2/select2.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/vendor/daterangepicker/daterangepicker.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('login_page/css/util.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('login_page/css/main.css') }}">
</head>
<body style="background-color: #666666;">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Login to continue
					</span>					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>				
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>
					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>
						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>				
				</form>
				<div class="login100-more" style="background-image: url('login_page/images/bg-01.jpg');">
				</div>
			</div>
		</div>
	</div>
    <script src="{{ asset('login_page/vendor/jquery/jquery-3.2.1.min.js') }}"></script>
    <script src="{{ asset('login_page/vendor/animsition/js/animsition.min.js') }}"></script>
    <script src="{{ asset('login_page/vendor/bootstrap/js/popper.js') }}"></script>
	<script src="{{ asset('login_page/vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('login_page/vendor/select2/select2.min.js') }}"></script>
    <script src="{{ asset('login_page/vendor/daterangepicker/moment.min.js') }}"></script>
	<script src="{{ asset('login_page/vendor/daterangepicker/daterangepicker.js') }}"></script>
    <script src="{{ asset('login_page/vendor/countdowntime/countdowntime.js') }}"></script>
    <script src="{{ asset('login_page/js/main.js') }}"></script>
</body>
</html>