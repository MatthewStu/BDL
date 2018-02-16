<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ball Don't Lie</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic|Merriweather:300,400italic,300italic,400,700italic'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Simple Line Icons -->
<link rel="stylesheet" href="css/simple-line-icons.css">
<!-- Datetimepicker -->
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
<!-- Flexslider -->
<link rel="stylesheet" href="css/flexslider.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" href="css/style.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="js-sticky">
		<div class="fh5co-main-nav1">
			<div class="container-fluid">
				<div class="fh5co-menu-1">
					<a href="/" data-nav-section="home">Home</a> <a href="/"
						data-nav-section="about">About</a> <a href="/SkillsDrills"
						data-nav-section="skills/drills">Skills/Drills</a>
				</div>
				<div class="fh5co-logo">
					<a href="index.html">BDL</a>
				</div>
				<div class="fh5co-menu-2">
					<a href="plan" data-nav-section="plan your workout">Plan</a> <a
						href="/signUp" data-nav-section="signup/login">SignUp/Login</a> <a
						href="logout" data-nav-section="clinics">Logout</a>
				</div>
			</div>

		</div>
	</div>
	<div id="fh5co-menus" data-section="menu">
		<div class="container">
			<div class="row text-center fh5co-heading row-padded">
				<div class="col-md-8 col-md-offset-2">
					<h2 class="heading to-animate">Workout List</h2>
					<p class="sub-heading to-animate">Below are your selected workouts</p>
				</div>
			</div>
	<form:form modelAttribute="userPlan">
		<c:forEach items="${userPlan.workoutName}" var="wName">
			<div class="testId">
				<ul>
					<li>
						<div class="fh5co-food-desc">

							<div>

								<h3>${wName}</h3>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</c:forEach>
		
	</form:form>
		</div>


				<!-- My PLAN SECTION END-->
				<!-- <form:form modelAttribute="userPlan" action="/testW" method="POST">

					
				</form:form> 
				-->
			</div>


		</div>
	</div>
	</div>
	<div id="fh5co-footer">
		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="to-animate">
						&copy; 2016 Foodee Free HTML5 Template. <br> Designed by <a
							href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> Demo
						Images: <a href="http://pexels.com/" target="_blank">Pexels</a> <br>
						Tasty Icons Free <a
							href="http://handdrawngoods.com/store/tasty-icons-free-food-icons/"
							target="_blank">handdrawngoods</a>
					</p>
					<p class="text-center to-animate">
						<a href="#" class="js-gotop">Go To Top</a>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="fh5co-social">
						<li class="to-animate-2"><a href="#"><i
								class="icon-facebook"></i></a></li>
						<li class="to-animate-2"><a href="#"><i
								class="icon-twitter"></i></a></li>
						<li class="to-animate-2"><a href="#"><i
								class="icon-instagram"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>



	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap DateTimePicker -->
	<script src="js/moment.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<script>
		$(function () {
	       $('#date').datetimepicker();
	   });
	</script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
</body>
</html>