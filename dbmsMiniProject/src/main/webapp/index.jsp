<%
if(session.getAttribute("name")==null)
{
	response.sendRedirect("login.jsp");
}
%>

<% 
 String name = (String)session.getAttribute("name");
       %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">


<title>DBMS MINI PROJECT</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="images/pokeball-logo-DC23868CA1-seeklogo.com-removebg-preview.png" rel="icon">
<link href="images/pokeball-logo-DC23868CA1-seeklogo.com-removebg-preview.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/index_styles.css" />

</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top">
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">

			<a href="index.html" class="logo d-flex align-items-center">
				<figure>
					<img
						src="images/pokeball-logo-DC23868CA1-seeklogo.com-removebg-preview.png"
						class="img-fluid" alt="">
				</figure> <span>Catch Em' All</span>
			</a>

			<nav id="navbar" class="navbar">
	<nav id="navbar" class="navbar">
  <ul>
    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
    <li><a class="nav-link scrollto" href="#about">About</a></li>
    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
    <li><a class="getstarted scrollto" href="thinkofpokemon.jsp">Play</a></li>
   
    
    <li class="dropdown">
      <a class="getstarted scrollto" href="#"><%= name %></a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="updateUserInfo.jsp">Update User Info</a>
        <a class="dropdown-item" href="login.jsp">Logout</a>
        <a class="dropdown-item" href="deleteAccount.jsp">Delete Account</a>
      </div>
    </li>
  </ul>
  <i class="bi bi-list mobile-nav-toggle"></i>
</nav>
	
	
				
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="hero d-flex align-items-center">

		<div class="container">
			<div class="row">
				<div class="col-lg-6 d-flex flex-column justify-content-center">
					<h1 data-aos="fade-up">Enter the captivating world of Pokemons
						with our thrilling guessing game!!!</h1>
					<h2 data-aos="fade-up" data-aos-delay="400">Answer a series of
						questions and see if we can guess which pokemon you're thinking
						of. Are you up for the Challenge?</h2>
					<div data-aos="fade-up" data-aos-delay="600">
						<div class="text-center text-lg-start">
							<a href="thinkofpokemon.jsp"
								class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
								<span>Let's Get Started</span> <i class="bi bi-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6 hero-img" data-aos="zoom-out"
					data-aos-delay="200">
					<figure>
						<img src="images/bg.jpg" class="img-fluid" alt="">
					</figure>

				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main">
		<!-- ======= About Section ======= -->
		<section id="about" class="about">

			<div class="container" data-aos="fade-up">
				<div class="row gx-0">

					<div class="col-lg-6 d-flex flex-column justify-content-center"
						data-aos="fade-up" data-aos-delay="200">
						<div class="content">
							<h3>Who We Are</h3>
							
							<p>Welcome to our game CATCH EM' ALL !!! We are a team of
								dedicated developers who have created this entertaining and
								challenging game for your enjoyment. Our goal is to provide you
								with a fun and engaging experience that tests your knowledge and
								memory of various pokemon characters. Our game uses algorithms
								to try to guess the character you are thinking of by asking a
								series of questions. Thank you for choosing to play our game. We
								hope you enjoy it and look forward to hearing your feedback!</p>
							<div class="text-center text-lg-start">
								<a href="#"
									class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center">
									<span>Read More</span> <i class="bi bi-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>

					<div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out"
						data-aos-delay="200">
						<figure>
							<img src="images\pk1-removebg-preview (1).png" class="img-fluid"
								alt="">
						</figure>

					</div>

				</div>
			</div>

		</section>
		<!-- End About Section -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">

			<div class="container" data-aos="fade-up">

				<header class="section-header">
					<h2>Contact</h2>
					<p>Contact Us</p>
				</header>

				<div class="row gy-4">

					<div class="col-lg-6">

						<div class="row gy-4">
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-geo-alt"></i>
									<h3>Address</h3>
									<p>
										Cummins College<br>Pune,Maharashtra
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-telephone"></i>
									<h3>Call Us</h3>
									<p>
										+91 7895624835<br>+91 6078369548
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-envelope"></i>
									<h3>Email Us</h3>
									<p>
										info@example.com<br>contact@example.com
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="info-box">
									<i class="bi bi-clock"></i>
									<h3>Open Hours</h3>
									<p>
										Monday - Friday<br>9:00AM - 05:00PM
									</p>
								</div>
							</div>
						</div>

					</div>

					<div class="col-lg-6">
						<figure>
							<img src="https://wallpaperset.com/w/full/e/c/1/82007.jpg" class="img-fluid"
								alt="">
						</figure>

					</div>

				</div>

			</div>

		</section>
		<!-- End Contact Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">


		<div class="footer-top">
			<div class="container">
				<div class="row gy-4">
					<div class="col-lg-5 col-md-12 footer-info">
						<a href="index.jsp" class="logo d-flex align-items-center">
							<figure>
								<img
									src="images/pokeball-logo-DC23868CA1-seeklogo.com-removebg-preview.png"
									class="img-fluid" alt="">
							</figure> <span>Catch Em' All</span>
						</a>
						<p>"Catch 'Em All" is a website that offers a fun and
							interactive guessing game based on the popular Pokemon franchise.
							With its user-friendly interface and comprehensive database of
							Pokemon characters, players can test their knowledge of these
							beloved creatures and improve their scores as they climb the
							leaderboard.</p>
						
					</div>

					
					<div
						class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
						<h4>Contact Us</h4>
						<p>
							Cummins College <br>Pune, 431517<br> Maharashtra<br>
							<br> <strong>Phone:</strong> +1 5589 55488 55<br> <strong>Email:</strong>
							info@example.com<br>
						</p>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Catch em' all</span></strong>. All
				Rights Reserved
			</div>

		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>