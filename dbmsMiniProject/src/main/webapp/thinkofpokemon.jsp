<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Catch Em All!</title>
<style>
    img {
        align-items: center;
    }

    body {    
        background-image: url(images/1_think.jpg);
        background-size: cover;
	background-color: black;
    }
    
h2 {
  display: flex;
  font-size: 44px;
  text-align: center;
  color: #FFFFFF;
  font-family: serif;
  margin-left: 170px;
}

p {
    font-size: 24px;
    text-align: left;
    color: #FFFFFF;
    font-family: serif;
      margin-left: 170px;
    
}

    
    section {
        font-size: 24px;
        text-align: center;
         
        font-color: rgb(1, 50, 137);
    }
    
    
    .btn-info {
        background-color: green;
        color: black;
    }
</style>
</head>
<body>
<br><br><br><br>
	<form action="t1_Normal.jsp" method="post">
		<section class="w3-container w3-center" style="max-width: 600px">
			<h2 class="w3-wide" style="text-align: left">THINK OF ANY GENERATION ONE POKEMON AND WE WILL GUESS IT!</h2>

		<br><br><br><br>
			<p class="w3-opacity">
				<a
				href="https://docs.google.com/spreadsheets/d/1S6Ewt4yv882qlEBadTVntieI1wfXqr-YGe7bbFm2z9M/edit#gid=1864772224"
				class="" ><br>List of Generation one Pokemons</a>
			</p>
              <br>
			<a href="t1_Normal.jsp" class="btn btn-info btn-lg"> <input
				type="submit" value="Play"> <span
				class="glyphicon glyphicon-play"></span>

			</a>
			<br><br>
			
			
		</section>

	</form>


</body>
</html>


