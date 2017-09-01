<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" style="background: url(../images/bg/bg-1.jpg) fixed no-repeat;">
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
<body style="background: url(../images/bg/bg-1.jpg) fixed no-repeat;">

	<!-- Header
    ================================================= -->
	<header id="header">
      <nav class="navbar navbar-default navbar-fixed-top menu">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right main-menu">
              <li class="dropdown"><a href="index.html">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Newsfeed <span><img src="images/down-arrow.png" alt=""></span></a>
                  <ul class="dropdown-menu newsfeed-home">
                    <li><a href="newsfeed.html">Newsfeed</a></li>
                    <li><a href="newsfeed-people-nearby.html">Poeple Nearly</a></li>
                    <li><a href="newsfeed-friends.html">My friends</a></li>
                    <li><a href="newsfeed-messages.html">Chatroom</a></li>
                    <li><a href="newsfeed-images.html">Images</a></li>
                    <li><a href="newsfeed-videos.html">Videos</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Timeline <span><img src="images/down-arrow.png" alt=""></span></a>
                <ul class="dropdown-menu login">
                  <li><a href="timeline.html">Timeline</a></li>
                  <li><a href="timeline-about.html">Timeline About</a></li>
                  <li><a href="timeline-album.html">Timeline Album</a></li>
                  <li><a href="timeline-friends.html">Timeline Friends</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle pages" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">All Pages <span><img src="images/down-arrow.png" alt=""></span></a>
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
                </ul>
              </li>
              <li class="dropdown"><a href="contact.html">Contact</a></li>
            </ul>
            <form class="navbar-form navbar-right hidden-sm">
              <div class="form-group">
                <i class="icon ion-android-search"></i>
                <input type="text" class="form-control" placeholder="Search friends, photos, videos">
              </div>
            </form>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
      </nav>
    </header>
	<!--Header End-->

	<!-- Top Banner
    ================================================= -->

	<div id="page-contents" style="position: relative;">
		<div class="container">
			<div class="row">

				<!-- Newsfeed Common Side Bar Left
          ================================================= -->
				<div class="col-md-3" style="position: static;">
					<div class="profile-card">
						<img src="images/users/user-1.jpg" alt="user"
							class="profile-photo">
						<h5>
							<a href="timeline.html" class="text-white">Sarah Cruiz</a>
						</h5>
						<a href="#" class="text-white"><i
							class="ion ion-android-person-add"></i> 1,299 followers</a>
					</div>
					<!--profile card ends-->
					<ul class="nav-news-feed">
						<li><i class="icon ion-ios-paper"></i>
							<div>
								<a href="newsfeed.html">My Newsfeed</a>
							</div></li>
						<li><i class="icon ion-ios-people"></i>
							<div>
								<a href="newsfeed-people-nearby.html">People Nearby</a>
							</div></li>
						<li><i class="icon ion-ios-people-outline"></i>
							<div>
								<a href="newsfeed-friends.html">Friends</a>
							</div></li>
						<li><i class="icon ion-chatboxes"></i>
							<div>
								<a href="newsfeed-messages.html">Messages</a>
							</div></li>
						<li><i class="icon ion-images"></i>
							<div>
								<a href="newsfeed-images.html">Images</a>
							</div></li>
						<li><i class="icon ion-ios-videocam"></i>
							<div>
								<a href="newsfeed-videos.html">Videos</a>
							</div></li>
					</ul>
					<!--news-feed links ends-->

					<!--chat block ends-->
				</div>
				<div class="col-md-7">

					<!-- Post Create Box
            ================================================= -->
					<div class="create-post">
						<div class="row">
							<div class="col-md-7 col-sm-7">
								<div class="form-group">
									<form:form method="post" modelAttribute="search">
										<form:input path="username" class="form-control"></form:input>
										<form:input path="caste" class="form-control"></form:input>

										<div class="col-md-5 col-sm-5">
											<div class="tools">
												<button class="btn btn-primary pull-right" type="submit">search</button>
											</div>
										</div>
									</form:form>
								</div>
							</div>


						</div>
					</div>
					<!-- Post Create Box End -->

					<!-- Friend List
            ================================================= -->
					<div class="friend-list">
						<div class="row">
							<c:forEach items="${ list}" var="member">
								<div class="col-md-6 col-sm-10">
									<div class="friend-card">
										<img src="" alt="profile-cover" class="img-responsive cover">
										<div class="card-info">
											<img src="" alt="user" class="profile-photo-lg">
											<div class="friend-info">
												<a href="#" class="pull-right text-green">Add Friend</a>
												<h5>
													<a href="#" class="profile-link">${member.username}</a>
												</h5>
												<p>Student at Harvard</p>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<!-- Newsfeed Common Side Bar Right
          ================================================= -->
				<div class="col-md-2 static">
					<div class="suggestions is_stuck" id="sticky-sidebar"
						style="position: fixed; top: 70px; width: 155px;">
						<h4 class="grey">Who to Follow</h4>
						<div class="follow-user">
							<img src="images/users/user-11.jpg" alt=""
								class="profile-photo-sm pull-left">
							<div>
								<h5>
									<a href="timeline.html">Diana Amber</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/users/user-12.jpg" alt=""
								class="profile-photo-sm pull-left">
							<div>
								<h5>
									<a href="timeline.html">Cris Haris</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/users/user-13.jpg" alt=""
								class="profile-photo-sm pull-left">
							<div>
								<h5>
									<a href="timeline.html">Brian Walton</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/users/user-14.jpg" alt=""
								class="profile-photo-sm pull-left">
							<div>
								<h5>
									<a href="timeline.html">Olivia Steward</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
						<div class="follow-user">
							<img src="images/users/user-15.jpg" alt=""
								class="profile-photo-sm pull-left">
							<div>
								<h5>
									<a href="timeline.html">Sophia Page</a>
								</h5>
								<a href="#" class="text-green">Add friend</a>
							</div>
						</div>
					</div>
					<div
						style="position: static; width: 155px; height: 329px; display: block; vertical-align: baseline; float: none;"></div>
				</div>
			</div>
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
	
	<script src="<c:url value='/static/js/script.js' />"></script>
	<script src="<c:url value='/static/js/jquery.sticky-kit.min.js' />"></script>


</body>
</html>
