<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="This is social network html5 template available in themeforest......" />
<meta name="keywords"
	content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
<meta name="robots" content="index, follow" />
<title>Friend Finder | A Complete Social Network Template</title>

<!-- Stylesheets
    ================================================= -->
<link href="<c:url value='/static/css/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/static/css/style.css' />" rel="stylesheet">
<link href="<c:url value='/static/css/ionicons.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/static/css/font-awesome.min.css' />"
	rel="stylesheet">
<!--Google Webfont-->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700'
	rel='stylesheet' type='text/css'>
<!--Favicon-->
<link rel="icon" href="<c:url value='/static/images/fav.png' />"
	type="image/x-icon">

</head>
<body style="background: url(<c:url value='/static/images/bg/bg-1.jpg' />) fixed no-repeat;">

	<!-- Header
    ================================================= -->
	<header id="header" class="lazy-load">
		<nav class="navbar navbar-default navbar-fixed-top menu">
			<div class="container">

				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img
						src="<c:url value='/static/images/logo.png' />" alt="logo" /></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1" style="display: block;">
					<ul class="nav navbar-nav navbar-right main-menu">
						<li class="dropdown"><a href="index.html">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Newsfeed <span><img
									src="<c:url value='/static/images/down-arrow.png' />" alt="" /></span></a>
							<ul class="dropdown-menu newsfeed-home">
								<li><a href="newsfeed.html">Newsfeed</a></li>
								<li><a href="newsfeed-people-nearby.html">Poeple Nearly</a></li>
								<li><a href="newsfeed-friends.html">My friends</a></li>
								<li><a href="newsfeed-messages.html">Chatroom</a></li>
								<li><a href="newsfeed-images.html">Images</a></li>
								<li><a href="newsfeed-videos.html">Videos</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Timeline <span><img
									src="<c:url value='/static/images/down-arrow.png' />" alt="" /></span></a>
							<ul class="dropdown-menu login">
								<li><a href="timeline.html">Timeline</a></li>
								<li><a href="timeline-about.html">Timeline About</a></li>
								<li><a href="timeline-album.html">Timeline Album</a></li>
								<li><a href="timeline-friends.html">Timeline Friends</a></li>
							</ul></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle pages" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">All
								Pages <span><img
									src="<c:url value='/static/images/down-arrow.png' />" alt="" /></span>
						</a>
							<ul class="dropdown-menu page-list">
								<li><a href="index.html">Landing Page</a></li>
								<li><a href="newsfeed.html">Newsfeed</a></li>
								<li><a href="newsfeed-people-nearby.html">Poeple Nearly</a></li>
								<li><a href="newsfeed-friends.html">My friends</a></li>
								<li><a href="newsfeed-messages.html">Chatroom</a></li>
								<li><a href="newsfeed-images.html">Images</a></li>
								<li><a href="newsfeed-videos.html">Videos</a></li>
								<li><a href="timeline.html">Timeline</a></li>
								<li><a href="timeline-about.html">Timeline About</a></li>
								<li><a href="timeline-album.html">Timeline Album</a></li>
								<li><a href="timeline-friends.html">Timeline Friends</a></li>
								<li><a href="contact.html">Contact Us</a></li>
							</ul></li>
						<li class="dropdown"><a href="contact.html">Contact</a></li>
					</ul>
					<form class="navbar-form navbar-right hidden-sm">
						<div class="form-group">
							<i class="icon ion-android-search"></i> <input type="text"
								class="form-control"
								placeholder="Search friends, photos, videos">
						</div>
					</form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
	</header>
	<!--Header End-->

	<!-- Top Banner
    ================================================= -->

	<div class="container">

		<!-- Sign Up Form
        ================================================= -->
		<div class="sign-up-form col-md-6">
			<a href="index.html" class="logo"><img
				src="<c:url value='static/images/logo.png' />" alt="Friend Finder" /></a>
			<h2 class="text-white">Find My Friends</h2>
			<div class="line-divider"></div>
			<div class="form-wrapper">
				<p class="signup-text">Signup now and meet awesome people around
					the world</p>
				<form:form method="POST" modelAttribute="member"
					class="form-horizontal">
					<form:input type="hidden" path="id" id="id" />

					<fieldset class="form-group">
						<label for="username">User Name</label>
						<form:input type="username" class="form-control" id="username"
							path="username" placeholder="Enter username"></form:input>
						<form:errors path="username" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="password">password</label>
						<form:input type="password" class="form-control" id="password"
							path="password" placeholder="Enter password"></form:input>
						<form:errors path="password" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="firstName">firstName</label>
						<form:input type="text" class="form-control" id="firstName"
							path="firstName" placeholder="Enter firstName"></form:input>
						<form:errors path="firstName" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="lastName">lastName</label>
						<form:input type="text" class="form-control" id="lastName"
							path="lastName" placeholder="Enter lastName"></form:input>
						<form:errors path="lastName" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="middleName">middleName</label>
						<form:input type="text" class="form-control" id="middleName"
							path="middleName" placeholder="Enter middleName"></form:input>
						<form:errors path="middleName" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="email">email</label>
						<form:input type="text" class="form-control" id="email"
							path="email" placeholder="Enter email"></form:input>
						<form:errors path="email" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="gender">gender</label>
						<form:select path="gender" class="form-control">
							<form:option value="Male">Male</form:option>
							<form:option value="FeMale">FeMale</form:option>
							<form:option value="Other">Other</form:option>
						</form:select>
						<form:errors path="gender" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="martialStatus">martialStatus</label>
						<form:select path="martialStatus" class="form-control">
							<form:option value="Male">Male</form:option>
							<form:option value="FeMale">FeMale</form:option>
							<form:option value="Other">Other</form:option>
						</form:select>
						<form:errors path="martialStatus" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="height">height</label>
						<form:input type="text" class="form-control" id="height"
							path="height" placeholder="Enter height"></form:input>
						<form:errors path="height" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="countryLivingIn">country</label>
						<form:input type="text" class="form-control" id="countryLivingIn"
							path="countryLivingIn" placeholder="Enter country"></form:input>
						<form:errors path="countryLivingIn" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="contactNumber">contactNumber</label>
						<form:input type="text" class="form-control" id="contactNumber"
							path="contactNumber" placeholder="Enter contactNumber"></form:input>
						<form:errors path="contactNumber" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="motherTongue">motherTongue</label>
						<form:input type="text" class="form-control" id="motherTongue"
							path="motherTongue" placeholder="Enter motherTongue"></form:input>
						<form:errors path="motherTongue" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="religion">religion</label>
						<form:input type="text" class="form-control" id="religion"
							path="religion" placeholder="Enter religion"></form:input>
						<form:errors path="religion" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="caste">caste</label>
						<form:input type="text" class="form-control" id="caste"
							path="caste" placeholder="Enter caste"></form:input>
						<form:errors path="caste" class="help-inline" />
					</fieldset>
					<fieldset class="form-group">
						<label for="status">status</label>
						<form:radiobutton path="status" value="M" class="form-control" />
						1mounth
						<form:radiobutton path="status" value="Y" class="form-control" />
						1year
						<form:errors path="status" class="help-inline" />
					</fieldset>
					<button class="btn-secondary" type="submit">Signup</button>
				</form:form>

			</div>
			<a href="#">Already have an account?</a>

		</div>

	</div>



	<!-- Download Section
    ================================================= -->


	<!-- Image Divider
    ================================================= -->


	<!-- Facts Section
    ================================================= -->


	<!-- Live Feed Section
    ================================================= -->

	<!-- Footer
    ================================================= -->


	<!--preloader-->
	<div id="spinner-wrapper">
		<div class="spinner"></div>
	</div>

	<!-- Scripts
    ================================================= -->
	<script src="<c:url value='/static/js/jquery-3.1.1.min.js' />"></script>
	<script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
	<script src="<c:url value='/static/js/jquery.appear.min.js' />"></script>
	<script
		src="<c:url value='/static/js/jquery.incremental-counter.js' />"></script>
	<script src="<c:url value='/static/js/script.js' />"></script>

</body>
</html>
