<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						
						
						
						<form action="register1" method="post"
					     class="register-form"
							id="register-form" onsubmit="return validateForm()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="Terms_of_service.jsp" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="Submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
							<a href="login.jsp" class="signup-image-link">I am already
							member</a>	
							
							
						</form>
					</div>
					
					
					<div class="signup-image">
						<figure>
						<img src="https://mfiles.alphacoders.com/991/thumb-991080.jpeg" alt="">
						</figure>
						
					</div>
					
					
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status=document.getElementById("status").value;
	if(status=="success")
		{
		swal("Account Created Successfully");
		}
	
	if(status=="User already exists with this Email Id")
	{
	swal("User already exists with this Email Id");
	}
	
	if(status=="Registration Successful")
	{
	swal("Registration Successful");
	}
	
	if(status=="Password and Confirm Password do not match")
	{
	swal("Password and Confirm Password do not match");
	}
	if(status=="Mobile number should be a 10-digit number")
	{
	swal("Mobile number should be a 10-digit number");
	}
	
	if(status=="Password should have a minimum of 8 characters")
	{
	swal("Password should have a minimum of 8 characters");
	}
	
	if(status=="Registration Failed")
	{
	swal("Registration Failed");
	}
	</script>



</body>
</html>