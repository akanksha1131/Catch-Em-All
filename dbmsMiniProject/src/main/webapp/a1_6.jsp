<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ability1  </title>


<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images\1_ability.jpg" alt="images\pokeball-logo-DC23868CA1-seeklogo.com-removebg-preview.png">
						</figure>
						
					</div>

					<div class="signin-form">
						<h2 class="form-title">Which ONE of the following abilities does your Pokemon Possess?</h2>
			
						<form method="post" action="a1_Lightning_Rod" class="register-form"
							id="login-form">
							
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Lightning Rod" />
							</div>
							
						</form>
						
						<form method="post" action="a1_Limber" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Limber" />
							</div>
						</form>
						
						<form method="post" action="a1_Magnet_Pull" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Magnet Pull" />
							</div>
						</form>
						
						
						<form method="post" action="a1_Natural_Care" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Natural Care" />
							</div>
						</form>
						
						
						
						<form method="post" action="a1_7.jsp" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="None of the Above" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<
</body>
</html>