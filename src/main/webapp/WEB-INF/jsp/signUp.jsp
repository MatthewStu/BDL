<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Ball Don't Lie</title>
	
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

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

      <div id="fh5co-container">
                   <div class="js-sticky">
                        <div class="fh5co-main-nav1">
                            <div class="container-fluid">
                                <div class="fh5co-menu-1">
                                    <a href="/" data-nav-section="home">Home</a>
                                    <a href="/" data-nav-section="about">About</a>
                                    <a href="/SkillsDrills" data-nav-section="skills/drills">Skills/Drills</a>
                                </div>
                                <div class="fh5co-logo">
                                    <a href="index.html">BDL</a>
                                </div>
                                <div class="fh5co-menu-2">
                                    <a href="/plan" data-nav-section="plan">Plan</a>
                                    <a href="/signUp" data-nav-section="signup/login">SignUp/Login</a>
                                    <a href="logout" data-nav-section="clinics">Logout</a>
                                </div>
                            </div>
                            
                        </div>
                 </div>
                
                <div id="fh5co-contact" data-section="reservation">
                        <div class="container">
                                <div class="row">

                                            <div class="col-md-6 to-animate-2">
                                                <h3>Login</h3>
                                                <form:form action = "login" method="POST" modelAttribute="user">
                                                <div class="form-group ">
                                                    <label for="email" class="sr-only"> Email</label>
                                                    <form:input path="email" class="form-control" placeholder="Email" type="text"></form:input>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="password" class="sr-only">Password</label>
                                                    <form:password path="password" class="form-control" placeholder="Password"></form:password>
                                                </div>
                                                <div class="form-group ">
                                                    <input class="btn btn-primary" value="Login" type="submit">
                                                </div>
                                                </form:form>
                                            </div>
                                             <div class="col-md-6 to-animate-2">
                                                <h3>Sign Up</h3>
                                                
                                                <form:form action ="signUp" method="POST" modelAttribute="user">
                                                <div class="form-group ">
                                                    <label for="name" class="sr-only">First Name</label>
                                                    <form:input path="firstName" class="form-control" placeholder="First Name" type="text"></form:input>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="name" class="sr-only">Last Name</label>
                                                    <form:input path="lastName" class="form-control" placeholder="Last Name" type="text"></form:input>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="email" class="sr-only">Email</label>
                                                    <form:input path="email" class="form-control" placeholder="Email" type="email"></form:input>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="newPassword" class="sr-only">New Password</label>
                                                    <form:password path="password" class="form-control" placeholder="New Password"></form:password>
                                                </div>
                                                <div class="form-group ">
                                                    <input class="btn btn-primary" value="Sign Up" type="submit">
                                                </div>
                                               </form:form>
                                            </div>
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
		$(function() {
			$('#date').datetimepicker();
		});
	</script>
	<!-- Main JS -->
    <script src="js/main.js"></script>
</body>


</html>