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
			
						<form method="post" action="a1_Swift_Swim" class="register-form"
							id="login-form">
							
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Swift Swim" />
							</div>
							
						</form>
						
						<form method="post" action="a1_Synchronize" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Synchronize" />
							</div>
						</form>
						
						<form method="post" action="a1_Thick_Fat" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Thick Fat" />
							</div>
						</form>
						
						
						<form method="post" action="a1_Torrent" class="register-form"
							id="login-form">
							
						
							<div class="form-group form-button">
								<input type="submit" name="ability1" id="signin"
									class="form-submit" value="Torrent" />
							</div>
						</form>
						
						
						
						<form method="post" action="a1_12.jsp" class="register-form"
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