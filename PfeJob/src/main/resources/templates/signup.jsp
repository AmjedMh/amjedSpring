<!doctype html>
<html lang = "en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th = "http://www.thymeleaf.org">
  <head>
  	<title>Sign Up 09</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="signup/css/style.css">


     <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.png"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"/>    
    <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css"/>  
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css"/>  
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
    <!-- Slicknav js -->
    <link rel="stylesheet" href="assets/css/slicknav.css" type="text/css"/>
    <!-- Main Styles -->
    <link rel="stylesheet" href="assets/css/main.css" type="text/css"/>
    <!-- Responsive CSS Styles -->
    <link rel="stylesheet" href="assets/css/responsive.css" type="text/css"/>
    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="assets/css/colors/red.css" media="screen"/>
	</head>
	<body class="img" style="background-image: url(signup/images/bg3.jpg)">
	        <!-- Start intro section -->
	        <div class="header"></div>
        <section id="intro" class="section-intro">
          <div class="logo-menu">
           <a class="navbar-brand logo" href="index.jsp"><img src="assets/img/logo.png" alt=""/></a>
            <nav class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="50">
           
     
            <!-- Mobile Menu Start -->
           <div class="row">
                    <div >
                      <div class="form-group" >
                     
                        <input  style="width:1000px;height: 50px;margin-top: 10px;background: transparent;border-color:black;border:dotted;" type="text" name="mc" th:value="${mc}" placeholder="           job title / keywords / company name"/>
                         <i class="ti-time"></i>
                      </div>
                    </div>
            
                    <div class="col-md-1 col-sm-6">
                      <button style="margin-top: 10px;" type="submit" class="btn btn-search-icon"><i class="ti-search"></i></button>
                    </div>
                  </div>
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
            </ul><!--- End Menu -->
          </div> <!--- End Off Canvas Side Menu -->
        
      </div>
      
      </section>
      
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Become A Member </h2>
				</div>
			</div>
			<div class="row justify-content-center" >
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap" style="width: 500px;" >
		      	<h3 class="text-center mb-4">Create Your Account</h3>
						<form  th:action="@{/inscription}" method="post" th:object="${compte}"  class="signup-form">
		      		<div class="form-group mb-3">
		      			<label class="label" for="name">Full Name</label>
		      			<input style="background: transparent;" type="text" class="form-control" th:field="*{nom}" placeholder="     John Doe">
		      			<span class="icon fa fa-user-o"></span>
		      		</div>
		      		<div class="form-group mb-3">
		      			<label class="label" for="email">Email Address</label>
		      			<input style="background: transparent;" type="text" class="form-control" th:field="*{email}" placeholder="johndoe@gmail.com">
		      			<span class="icon fa fa-paper-plane-o"></span>
		      		</div>
	            <div class="form-group mb-3">
	            	<label class="label" for="password">Password</label>
	              <input style="background: transparent;" type="password" class="form-control" th:field="*{password}" placeholder="Password" id="inputPassword">
	              <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	              <span class="icon fa fa-lock"></span>
	            </div>
	            <div class="form-group mb-3">
	            	<label class="label" for="password">Password</label>
	              <input style="background: transparent;" type="password" class="form-control" name="cpassword" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm">
	              <span toggle="#password-confirm" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	              <span class="icon fa fa-lock"></span>
	            </div>
	             <div class="form-group mb-3">
	            	<label class="label" for="password">Phone number</label>
	              <input style="background: transparent;" type="text" class="form-control" placeholder="phone" th:field="*{tel}">
	            
	              <span class="icon fa fa-phone"></span>
	            </div>
	                 <div class="form-group mb-3">
	            	<label class="label" for="password">Adresse</label>
	              <input style="background: transparent;" type="text" class="form-control" placeholder="Adresse" th:field="*{adresse}">
	              <span class="fa fa-location-tod"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
	            </div>
	          </form>
	          <p>I'm already a member! <a data-toggle="tab" href="#signin">Sign In</a></p>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="signup/js/jquery.min.js"></script>
  <script src="signup/js/popper.js"></script>
  <script src="signup/js/bootstrap.min.js"></script>
  <script src="signup/js/main.js"></script>

	</body>
</html>

