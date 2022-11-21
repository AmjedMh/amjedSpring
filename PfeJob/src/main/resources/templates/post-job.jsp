<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="author" content="Jobboard"/>

<title>JobBoard - Ajouter offre</title>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/img/favicon.png"/>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="assets/css/bootstrap-select.min.cs" type="text/css"/>
<!-- Material CSS -->
<link rel="stylesheet" href="assets/css/material-kit.css" type="text/css"/>
<!-- Font Awesome CSS -->
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css" type="text/css"/>
<link rel="stylesheet" href="assets/fonts/themify-icons.css"/>

<!-- Animate CSS -->
<link rel="stylesheet" href="assets/extras/animate.css" type="text/css"/>
<!-- Owl Carousel -->
<link rel="stylesheet" href="assets/extras/owl.carousel.css" type="text/css"/>
<link rel="stylesheet" href="assets/extras/owl.theme.css" type="text/css"/>
<!-- Rev Slider CSS -->
<link rel="stylesheet" href="assets/extras/settings.css" type="text/css"/>
<!-- Editor -->
<link rel="stylesheet" href="assets/extras/froala_editor.min.css" type="text/css"/>
<!-- Slicknav js -->
<link rel="stylesheet" href="assets/css/slicknav.css" type="text/css"/>
<!-- Main Styles -->
<link rel="stylesheet" href="assets/css/main.css" type="text/css"/>
<!-- Responsive CSS Styles -->
<link rel="stylesheet" href="assets/css/responsive.css" type="text/css"/>

<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="assets/css/colors/red.css" media="screen"/>
</head>
<body>
	<!-- Header Section Start -->
	<div class="header">
		<div class="logo-menu">
			<nav class="navbar navbar-default main-navigation" role="navigation"
				data-spy="affix" data-offset-top="50">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand logo" href="index.jsp"><img src="assets/img/logo.png" alt=""/></a>
					</div>

					<div class="collapse navbar-collapse" id="navbar">
						<!-- Start Navigation List -->
						<ul class="nav navbar-nav">
							<li><a href="about.jsp"> Pages <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
								
									<li><a href="contact.jsp"> Contact </a></li>
								</ul></li>
							<li th:if="${session.role == 'c'}"><a href="#"> Candidates <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="browse-jobs.jsp"> Browse Jobs </a></li>
									<li><a href="browse-categories.jsp"> Browse
											Categories </a></li>
									<li><a href="add-resume.jsp"> Add Resume </a></li>
									<li><a href="manage-resumes.jsp"> Manage Resumes </a></li>
									<li><a href="job-alerts.jsp"> Job Alerts </a></li>
								</ul></li>
							<li th:if="${session.role == 'R'}"><a class="active" href="#"> Employers <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a class="active" href="post-job.jsp"> Add Job </a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right float-right">
							<li class="left" th:if="${#httpServletRequest.remoteUser}!=null"><a href="post-job.jsp"><i
									class="ti-pencil-alt"></i> Post A Job</a></li>
							<li class="right" th:if="${#httpServletRequest.remoteUser}==null"><a href="login.jsp"><i
									class="ti-lock"></i> Log In</a></li>
									
						</ul>
					</div>
				</div>
				<!-- Mobile Menu Start -->
				<ul class="wpb-mobile-menu">
					<li><a href="index.jsp">Home</a>
						<ul>
							<li><a href="index.jsp">Home 1</a></li>

						</ul></li>
					<li><a href="about.jsp">Pages</a>
						<ul>
							<li><a href="about.jsp">About</a></li>
							<li><a href="job-page.jsp">Job Page</a></li>
							<li><a href="job-details.jsp">Job Details</a></li>
							<li><a href="resume.jsp">Resume Page</a></li>
							<li><a href="privacy-policy.jsp">Privacy Policy</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
							<li><a href="pricing.jsp">Pricing Tables</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul></li>
					<li><a href="#">For Candidates</a>
						<ul>
							<li><a href="browse-jobs.jsp">Browse Jobs</a></li>
							<li><a href="browse-categories.jsp">Browse Categories</a></li>
							<li><a href="add-resume.jsp">Add Resume</a></li>
							<li><a href="manage-resumes.jsp">Manage Resumes</a></li>
							<li><a href="job-alerts.jsp">Job Alerts</a></li>
						</ul></li>
					<li><a class="active" href="#">For Employers</a>
						<ul>
							<li><a class="active" href="post-job.jsp">Add Job</a></li>
							
						</ul></li>
					<li class="btn-m"><a href="post-job.jsp"><i
							class="ti-pencil-alt"></i> Post A Job</a></li>
					<li class="btn-m"><a href="login.jsp"><i
							class="ti-lock"></i> Log In</a></li>
				</ul>
				<!-- Mobile Menu End -->
			</nav>

			<!-- Off Canvas Navigation -->
			<div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
				<!--- Off Canvas Side Menu -->
				<div class="close" data-toggle="offcanvas" data-target=".navmenu">
					<i class="ti-close"></i>
				</div>
				<h3 class="title-menu">All Pages</h3>
				<ul class="nav navmenu-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
				<!--- End Menu -->
			</div>
			<!--- End Off Canvas Side Menu -->
			<div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite"
				data-wow-duration="500ms" data-toggle="offcanvas"
				data-target=".navmenu">
				<p>
					<i class="ti-files"></i> All Pages
				</p>
			</div>
		</div>
		<!-- Header Section End -->

		<!-- Page Header Start -->
		<div class="page-header"
			style="background: url(assets/img/banner1.jpg);">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumb-wrapper">
							<h2 class="product-title">Post A Job</h2>
							<ol class="breadcrumb">
								<li><a href="#"><i class="ti-home"></i> Home</a></li>
								<li class="current">Post A Job</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Page Header End -->

		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-9 col-md-offset-2">
					<div class="alert alert-sucess alert-dismissable" th:if="${msg}">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">
										<i class="fa fa-times"></i>
									</button>
									<font style="vertical-align: inherit;"><span th:utext="${msg}"></span>
										</font>
								</div>
						<fieldset>
							<label><font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">Avoir un compte?</font></font></label>
							<div class="field account-sign-in">
								<p>
									<a class="btn btn-common btn-sm" th:if="${#httpServletRequest.remoteUser}==null" href="login.jsp"><i
										class="ti-key"></i><font style="vertical-align: inherit;"><font
											style="vertical-align: inherit;"> se connecter</font></font></a>
								</p>
								<div class="alert alert-info alert-dismissable" th:if="${#httpServletRequest.remoteUser}==null">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">
										<i class="fa fa-times"></i>
									</button>
									<font style="vertical-align: inherit;"><font
										style="vertical-align: inherit;"> Si vous n'avez pas de
											compte, vous pouvez en cr�er un ci-dessous en entrant votre
											adresse email. </font><font style="vertical-align: inherit;">Un
											mot de passe vous sera automatiquement envoy� par courrier
											�lectronique. </font></font>
								</div>
							</div>
						</fieldset>
						
<div class="page-ads box" th:class="${type}=='R'?'form-ad':'' ">
<form class="form-ad" th:action="@{/post-job}" method="post" th:object="${offre}" >
        <div class="form-group is-empty">
        <label class="control-label"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Titre</font></font></label>
        <input type="text" th:field="*{titre}" required="required" class="form-control"/>
        <span class="material-input"></span></div>
        <div class="form-group is-empty">
        <label class="control-label"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Profession</font></font></label>
        <input type="text" th:field="*{poste}" required="required" class="form-control"/>
        <span class="material-input"></span></div>
        <div class="form-group is-empty">
        <label class="control-label"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lieu </font></font><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">(optionnel)</font></font></span></label>
        <input type="text" th:field="*{lieu}" required="required" class="form-control" placeholder="e.g.London"/>
        <span class="material-input"></span></div>
         <div class="form-group is-empty">
        <input type="number" th:field="*{salaire}" required="required" class="form-control" placeholder="e.g.London"/>
        <span class="material-input"></span></div>
        <div class="form-group">
        <label class="control-label"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Cat�gorie</font></font></label>
        <div class="search-category-container">
        <label class="styled-select"></label>
     <div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="text">All Categories</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Finance</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">IT &amp; Engineering</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Education/Training</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Art/Design</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Sale/Markting</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="6"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Healthcare</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="7"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Science</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="8"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Food Services</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div><select th:field="*{categories}" class="dropdown-product selectpicker" tabindex="-98">   
		<option th:value="finance" value="finance" ><font style="vertical-align: inherit;">La finance</font></option>
        <option th:value="informatique" value="informatique"><font style="vertical-align: inherit;">Informatique et ing�nierie</font></option>
        <option th:value="Education" value="Education"><font style="vertical-align: inherit;">Education / Formation</font></option>
        <option th:value="Design" value="Design"><font style="vertical-align: inherit;">Design d'art</font></option>
        <option th:value="Vente" value="Vente"><font style="vertical-align: inherit;">Vente / marquage</font></option>
        <option th:value="Sant�" value="Sante"><font style="vertical-align: inherit;">Soins de sant�</font></option>
        <option th:value="Science" value="Science"><font style="vertical-align: inherit;">Science</font></option>
        <option th:value="alimentation" value="Alimentation"><font style="vertical-align: inherit;">Les services alimentaires</font></option>
  </select></div></div>
  <div class="form-group is-empty" >
 <label class="control-label"><font style="vertical-align: inherit;">
 <font style="vertical-align: inherit;">La description</font></font></label>
<textarea th:field="*{description}" rows="7" cols="100" required="required" class="note-editable" contenteditable="true" ></textarea>
		</div>
					
				
<div class="form-group is-empty">
<label class="control-label">
<font style="vertical-align: inherit;">Date de cl�ture </font><span><font style="vertical-align: inherit;"><font
	style="vertical-align: inherit;">(optionnel)</font></font></span></label>
	<input type="date" class="form-control" required="required" th:field="*{date_expiration}" placeholder="yyyy-mm-dd"/>
	<p class="note">
		<font style="vertical-align: inherit;">
		<font style="vertical-align: inherit;">Date limite pour les nouveaux candidats.</font></font>
	</p>
						<span class="material-input"></span>
					</div>
					<input type="submit" class="btn btn-common log-btn" data-toggle="modal" value="Soumetter Votre Travail" data-target="#exampleModal"/>
							<span th:utext="${msg}"></span>
				</form></div>
				</div>
				</div>
				</div>
			</section>
	<!-- Footer Section Start -->
	<footer>
		<!-- Footer Area Start -->
		<section class="footer-Content">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">
								<img src="assets/img/logo.png" class="img-responsive"
									alt="Footer Logo"/>
							</h3>
							<div class="textwidget">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Quisque lobortis tincidunt est, et euismod purus suscipit quis.
									Etiam euismod ornare elementum. Sed ex est, consectetur eget
									facilisis sed, auctor ut purus.</p>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Quick Links</h3>
							<ul class="menu">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">License</a></li>
								<li><a href="#">Terms et Conditions</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Trending Jobs</h3>
							<ul class="menu">
								<li><a href="#">Android Developer</a></li>
								<li><a href="#">Senior Teamleader</a></li>
								<li><a href="#">iOS Developer</a></li>
								<li><a href="#">Junior Tester</a></li>
								<li><a href="#">Full Stack Developer</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Follow Us</h3>
							<div class="bottom-social-icons social-icon">
								<a class="twitter" href="https://twitter.com/GrayGrids"><i
									class="ti-twitter-alt"></i></a> <a class="facebook"
									href="https://web.facebook.com/GrayGrids"><i
									class="ti-facebook"></i></a> <a class="youtube"
									href="https://youtube.com"><i class="ti-youtube"></i></a> <a
									class="dribble" href="https://dribbble.com/"><i
									class="ti-dribbble"></i></a> <a class="linkedin"
									href="https://www.linkedin.com/"><i class="ti-linkedin"></i></a>
							</div>
							<p>Join our mailing list to stay up to date and get notices
								about our new releases!</p>
							<form class="subscribe-box">
								<input type="text" placeholder="Your email"/> <input
									type="submit" class="btn-system" value="Send"/>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Footer area End -->

		<!-- Copyright Start  -->
		<div id="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="site-info text-center">
							<p>
								All copyrights reserved @ 2017 - Design and Development by <a
									href="http://graygrids.com">Graygrids</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Copyright End -->

	</footer>
	<!-- Footer Section End -->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="ti-arrow-up"></i>
	</a>

	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
				<div class="object" id="object_five"></div>
				<div class="object" id="object_six"></div>
				<div class="object" id="object_seven"></div>
				<div class="object" id="object_eight"></div>
			</div>
		</div>
	</div>

	<!-- Main JS  -->
	<script type="text/javascript" src="assets/js/jquery-min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/jquery.parallax.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.slicknav.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>
	<script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jasny-bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="assets/js/form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/contact-form-script.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="assets/js/froala_editor.min.js"></script>
	<script type="text/javascript" src="assets/js/fullscreen.min.js"></script>

	<script>
        $(function() {
          $('#edit').froalaEditor()
        });
      </script>
</div>
</body>
</html>