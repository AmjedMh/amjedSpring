<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta http-equiv="content-type" content="text/jsp; charset=utf-8"/>
  <meta name="author" content="Jobboard"/>
  <title>JobBoard -Profile</title>
  
  <link rel="shortcut icon" href="assets/img/favicon.png"/>
  
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css"/>
  <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/css/material-kit.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" type="text/css"/>
  <link rel="stylesheet" href="assets/fonts/themify-icons.css"/>
  
  <link rel="stylesheet" href="assets/css/color-switcher.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/extras/animate.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/extras/owl.carousel.css" type="text/css"/>
  <link rel="stylesheet" href="assets/extras/owl.theme.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/extras/settings.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/css/slicknav.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/css/main.css" type="text/css"/>
  
  <link rel="stylesheet" href="assets/css/responsive.css" type="text/css"/>
  
  <link rel="stylesheet" type="text/css" href="assets/css/colors/red.css" media="screen"/>
  <link rel="stylesheet" id="colors" href="assets/css/colors/red.css" type="text/css"/>
  <link rel="stylesheet" href="assets/css/color-switcher.css" type="text/css"/>
  </head>
  <body>
  <div class="header">
  <div class="logo-menu">
  <nav class="navbar navbar-default main-navigation affix-top" role="navigation" data-spy="affix" data-offset-top="50">
  <div class="container">
  
  <div class="navbar-header"><div class="slicknav_menu"><jobs aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></jobs><ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
  
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a class="active" href="about.jsp" tabindex="-1">Pages</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="about.jsp" role="menuitem" tabindex="-1">About</a></li>
  <li><a href="job-page.jsp" role="menuitem" tabindex="-1">Job Page</a></li>
  <li><a href="job-details.jsp" role="menuitem" tabindex="-1">Job Details</a></li>
  <li><a class="active" href="resume.jsp" role="menuitem" tabindex="-1">Resume Page</a></li>
  <li><a href="privacy-policy.jsp" role="menuitem" tabindex="-1">Privacy Policy</a></li>
  <li><a href="faq.jsp" role="menuitem" tabindex="-1">FAQ</a></li>
  <li><a href="pricing.jsp" role="menuitem" tabindex="-1">Pricing Tables</a></li>
  <li><a href="contact.jsp" role="menuitem" tabindex="-1">Contact</a></li>
  </ul>
  </li>
  <li th:if="${session.role == 'c'}" class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="#" tabindex="-1">For Candidates</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
    <li><a href="add-resume.jsp" role="menuitem" tabindex="-1">Add Resume</a></li>
  <li><a href="manage-resumes.jsp" role="menuitem" tabindex="-1">Manage Resumes</a></li>
 
  </ul>
  </li>
  <li th:if="${session.role == 'R'}" class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="#" tabindex="-1">For Employers</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">

  <li><a href="browse-resumes.jsp" role="menuitem" tabindex="-1">Browse Resumes</a></li>
  </ul>
  </li>
  </ul></div>
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  </button>
  <a class="navbar-brand logo" href="index.jsp"><img src="assets/img/logo.png" alt=""/></a>
  </div>
  <div class="collapse navbar-collapse" id="navbar">
  
  <ul class="nav navbar-nav">
  <li class="drop">
  <a href="index.jsp">
  Home <i class="fa fa-angle-down"></i>
  </a>
 
  </li>
  <li class="drop">
  <a class="active" href="about.jsp">
  Pages <i class="fa fa-angle-down"></i>
  </a>
  <ul class="dropdown">
 
  
  <li>
  <a href="contact.jsp">
  Contact
  </a>
  </li>
  </ul>
  </li>
  <li class="drop">
  <a href="#">
  Candidates <i class="fa fa-angle-down"></i>
  </a>
  <ul class="dropdown">
 
 
  <li>
  <a href="add-resume.jsp">
  Add Resume
  </a>
  </li>
 
  </ul>
  </li>

 
  </ul>
  
  </div>
  </div>
  
  <ul class="wpb-mobile-menu">
  <li>
  <a href="index.jsp">Home</a>
 
  </li>
  <li>
  <a class="active" href="about.jsp">Pages</a>
  <ul>

  <li><a href="contact.jsp">Contact</a></li>
  </ul>
  </li>
  <li>
  <a href="#">For Candidates</a>
  <ul>
  <li><a href="browse-jobs.jsp">Browse Jobs</a></li>
  <li><a href="browse-categories.jsp">Browse Categories</a></li>
  <li><a href="add-resume.jsp">Add Resume</a></li>
  <li><a href="manage-resumes.jsp">Manage Resumes</a></li>
  <li><a href="job-alerts.jsp">Job Alerts</a></li>
  </ul>
  </li>
  <li>
  <a href="#">For Employers</a>
  <ul>
  <li><a href="post-job.jsp">Add Job</a></li>
  <li><a href="manage-jobs.jsp">Manage Jobs</a></li>
  <li><a href="manage-applications.jsp">Manage Applications</a></li>
  <li><a href="browse-resumes.jsp">Browse Resumes</a></li>
  </ul>
  </li>
  <li class="btn-m"><a href="post-job.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
  <li class="btn-m"><a href="my-account.jsp"><i class="ti-lock"></i> Log In</a></li>
  </ul>
  
  </nav>
  
  <div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
  
  <div class="close" data-toggle="offcanvas" data-target=".navmenu">
  <i class="ti-close"></i>
  </div>
  <h3 class="title-menu">All Pages</h3>
  <ul class="nav navmenu-nav">
  <li><a href="index.jsp">Home</a></li>
    <li><a href="contact.jsp">Contact</a></li>
  <li><a href="my-account.jsp">Login</a></li>
  </ul>
  </div> 
  <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
  <p><i class="ti-files"></i> All Pages</p>
  </div>
  </div>
  
  
  <div class="page-header" style="background: url(assets/img/banner1.jpg);">
  <div class="container">
  <div class="row">
  <div class="col-md-12">
  <div class="breadcrumb-wrapper">
  <h2 class="product-title">Resume</h2>
  
  </div>
  </div>
  </div>
  </div>
  </div>
  
  
  <div id="content">
  <div class="container">
  <div class="row">
  <div class="col-md-4 col-sm-4 col-xs-12">
  <div class="right-sideabr">
  <div class="inner-box">
  <h4>Manage Account</h4>
  <ul class="lest item">
 
  <li><a href="mesDemandes.jsp">Applied jobs</a></li>
  <li><a th:href="@{/toutnotification(id=${compte.id})}">Notifications <i class="fa fa-bell" aria-hidden="true"></i><span class="notinumber" th:text="${notif}"></span></a></li>
  <li><a href="messages.jsp">Messages <i class="fa fa-comments" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  </ul>
  <ul class="lest item">
  <li><a href="manage-resumes.jsp">Manage Resume</a></li>
  </ul>
  <ul class="lest">
  <li><a href="change-password.jsp">Change Password</a></li>
  <li><a href="login.jsp">Log Out</a></li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-8 col-sm-8 col-xs-12">
  <div class="inner-box my-resume">
  <div class="author-resume">
  <div class="thumb">
  <img src="assets/img/resume/avatar.png" style="width:80px; height: 80px; border-radius:50% ; " alt=""/>
  </div>
  <div class="author-info" Attribute="compte">
   <h3 th:text="${compte.nom}"></h3> <h3 th:text="${compte.prenom}"></h3>
  <p class="sub-title" th:text="${compte.date_nais}"></p>
  <p><span class="address" th:text="${compte.adresse}"><i class="ti-location-pin"></i></span> </p>
  <p><span th:text="${compte.tel}"><i class="ti-phone"></i ></span></p>
  
  </div>
  </div>
  <div class="about-me item">
 <center><h2><font color="green">About Me </font></h2></center> 
  </div>
  <center><h3><font color="#33FFF3">Experience </font></h3></center>
  <div class="work-experence item" th:each="exp:${lexp}">
  <table><tr><td><h4>Post : </h4></td><td>
  <h5 th:text="${exp.poste_occupee}"> </h5></td></tr>
  <tr><td><h4>Secteur acivity : </h4></td><td>
  <h5 th:text="${exp.secteur_activite}"> </h5></td></tr>
  <tr><td>
  <h4>society : </h4></td><td><h5 th:text="${exp.nom_societe}"></h5></td></tr><tr><td>
   <h4> Date of start : </h4></td><td><h5 th:text="${exp.date_debut}"></h5></td></tr><tr><td>
   <h4> Date of end : </h4></td><td><h5 th:text="${exp.date_fin}"></h5></td></tr></table>
  
   <center><div class="action-btn" >
          <a Style='width:150px;' class="btn btn-xs btn-danger"  th:href="@{deleteexperience(id_experience=${exp.id_experience})}">delete</a>
           </div>
		<div class="action-btn" >
          <a Style='width:150px;' class="btn btn-xs btn-success"  th:href="@{ouvrirmodifierexperience(id_experience=${exp.id_experience})}">Edit</a>
           </div></center>
  </div>
         
  <center><h3><font color="#33FFF3">Education</font></h3></center>
  <div class="education item" th:each="form:${lform}">
  <table><tr><td>
  <h4>Diplome : </h4></td><td><h5 th:text="${form.diplome_obtenu}"> </h5></td></tr><tr><td>
  <h4>Name etablissement: </h4></td><td><h5 th:text="${form.nom_etablissement}"></h5></td></tr><tr><td>
  <h4> Date : </h4></td><td><h5  th:text="${form.date_diplome}"></h5></td></tr></table>
  		  <center><div class="action-btn" >
          <a Style='width:150px;'  class="btn btn-xs btn-danger"  th:href="@{deleteformation(id_formation=${form.id_formation})}">delete</a>
           </div>
           <div class="action-btn">
          <a Style='width:150px;' class="btn btn-xs btn-success"  th:href="@{ouvrirmodifierformation(id_formation=${form.id_formation})}">Edit</a>
           </div></center>
  </div>
  <center><h3><font color="#33FFF3">Skills</font></h3></center>
  <div class="education item" th:each="comp:${lcomp}">
  <table><tr><td>
  <h4> skills name : </h4></td><td><h5 th:text="${comp.nomcompp}"> </h5></td></tr><tr><td>
   <h4> skills level : </h4></td><td><h5 th:text="${comp.niveau}"></h5></td></tr><tr><td>
  <h4> Month of experiences : </h4></td><td><h5  th:text="${comp.mois_experience}"></h5></td></tr></table>
  <center><div class="action-btn">
          <a Style='width:150px;' class="btn btn-xs btn-danger"  th:href="@{deletecompetence(id_competence=${comp.id_competence})}">delete</a>
           </div>
           <div class="action-btn">
          <a Style='width:150px;' class="btn btn-xs btn-success"  th:href="@{ouvrirmodifiercompetence(id_competence=${comp.id_competence})}">Edit</a>
           </div></center>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  
  
  <footer>
  
  <section class="footer-Content">
  <div class="container">
  <div class="row">
  <div class="col-md-3 col-sm-6 col-xs-12">
  <div class="widget">
  <h3 class="block-title"><img src="assets/img/logo.png" class="img-responsive" alt="Footer Logo"/></h3>
  <div class="textwidget">
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum. Sed ex est, consectetur eget facilisis sed, auctor ut purus.</p>
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
  <li><a href="#">Terms &amp; Conditions</a></li>
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
  <a class="twitter" href="https://twitter.com/"><i class="ti-twitter-alt"></i></a>
  <a class="facebook" href="https://web.facebook.com/"><i class="ti-facebook"></i></a>
  <a class="youtube" href="https://youtube.com"><i class="ti-youtube"></i></a>
  <a class="dribble" href="https://dribbble.com/"><i class="ti-dribbble"></i></a>
  <a class="linkedin" href="https://www.linkedin.com/"><i class="ti-linkedin"></i></a>
  </div>
  <p>Join our mailing list to stay up to date and get notices about our new releases!</p>
  <form class="subscribe-box">
  <input type="text" placeholder="Your email"/>
  <input type="submit" class="btn-system" value="Send"/>
  </form>
  </div>
  </div>
  </div>
  </div>
  </section>
  
  
  <div id="copyright">
  <div class="container">
  <div class="row">
  <div class="col-md-12">
  <p>All Rights reserved ? 2017 - Designed &amp; Developed by <a rel="nofollow" href="">Amjed et Aicha</a></p>
  </div>
  </div>
  </div>
  </div>
  
  </footer>
  
  
  <a href="#" class="back-to-top">
  <i class="ti-arrow-up"></i>
  </a>
  <div id="loading" style="display: none;">
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
  
  <script type="text/javascript" src="assets/js/jquery-min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="assets/js/material.min.js"></script>
  <script type="text/javascript" src="assets/js/material-kit.js"></script>
  <script type="text/javascript" src="assets/js/color-switcher.js"></script>
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
  <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>
  <script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js"></script>
  
  </div><div id="color-style-switcher"><div><h3>Color Palette</h3><ul class="colors"><li><a class="color1 active" href="#"></a></li><li><a class="color2" href="#"></a></li><li><a class="color3" href="#"></a></li><li><a class="color4" href="#"></a></li><li><a class="color5" href="#"></a></li><li><a class="color6" href="#"></a></li></ul></div><div class="bottom"> <a href="#" class="settings"><i class="ti-settings"></i></a> </div></div></body></html>