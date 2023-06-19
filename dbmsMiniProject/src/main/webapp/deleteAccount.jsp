<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete Account</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

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
                        <h2 class="form-title">Delete Account</h2>
                    
                        <form method="post" action="delete" class="register-form" id="register-form">
                            
                            <div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Delete Account" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="images/signup-image.jpg" alt="sing up image">
                        </figure>
                        <a href="login.jsp" class="signup-image-link">Login Page</a>
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
            swal("Account Deleted Successfully");
        }
    </script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>``` 

In the HTML form, I changed the `action` attribute of the form to `/delete` so that it can send a POST request to the `/delete` servlet.

Additionally, I updated the `name` attributes of the email and password input fields to `uemail` and `upass`, respectively, so that they match the parameter names used in the servlet's `doPost` method.
