<html lang="en" class=""><head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="author" content="Jobboard"/>
  <title>JobBoard - Notifications</title>
  
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
  <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"/></head>
  <body>
  
  <div class="header">
  <div class="logo-menu">
  <nav class="navbar navbar-default main-navigation affix-top" role="navigation" data-spy="affix" data-offset-top="50">
  <div class="container">
  
  <div class="navbar-header"><div class="slicknav_menu"><jobs aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></jobs><ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="index.jsp" tabindex="-1">Home</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs>
  </li>
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="about.jsp" tabindex="-1">Pages</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="about.jsp" role="menuitem" tabindex="-1">About</a></li>
  <li><a href="job-page.jsp" role="menuitem" tabindex="-1">Job Page</a></li>
  <li><a href="job-details.jsp" role="menuitem" tabindex="-1">Job Details</a></li>
  <li><a href="candidataccount.jsp" role="menuitem" tabindex="-1">My Account</a></li>
  <li><a href="faq.jsp" role="menuitem" tabindex="-1">FAQ</a></li>
  <li><a href="contact.jsp" role="menuitem" tabindex="-1">Contact</a></li>
  </ul>
  </li>
  <li th:if="${session.role == 'c'}" class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="#" tabindex="-1">For Candidates</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="browse-jobs.jsp" role="menuitem" tabindex="-1">Browse Jobs</a></li>
  <li><a href="browse-categories.jsp" role="menuitem" tabindex="-1">Browse Categories</a></li>
  <li><a href="add-resume.jsp" role="menuitem" tabindex="-1">Add Resume</a></li>
  <li><a href="manage-resumes.jsp" role="menuitem" tabindex="-1">Manage Resumes</a></li>
  <li><a href="job-alerts.jsp" role="menuitem" tabindex="-1">Job Alerts</a></li>
  </ul>
  </li>
  <li class="btn-m"><a href="index.jsp" role="menuitem" tabindex="-1"><i class="ti-lock"></i> Logout</a></li>
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
  <a class="active" href="about.jsp">
  About
  </a>
  </li>
  <li>
  <a href="job-page.jsp">
  Job Page
  </a>
  </li>
  <li>
  <a href="job-details.jsp">
  Job Details
  </a>
  </li>
  <li>
  <a href="candidataccount.jsp">
  My Account
  </a>
  </li>
  <li>
  <a href="faq.jsp">
  FAQ
  </a>
  </li>
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
  <a href="browse-jobs.jsp">
  Browse Jobs
  </a>
  </li>
  <li>
  <a href="browse-categories.jsp">
  Browse Categories
  </a>
  </li>
  <li>
  <a href="add-resume.jsp">
  Add Resume
  </a>
  </li>
  <li>
  <a href="manage-resumes.jsp">
  Manage Resumes
  </a>
  </li>
  <li>
  <a href="job-alerts.jsp">
  Job Alerts
  </a>
  </li>
  </ul>
  </li>
  </ul>
  <ul class="nav navbar-nav navbar-right float-right">
  <li class="right"><a href="index.jsp"><i class="ti-lock"></i> Logout</a></li>
  </ul>
  </div>
  </div>
  
  <ul class="wpb-mobile-menu">
  <li>
  <a href="index.jsp">Home</a>
  </li>
  <li>
  <a href="about.jsp">Pages</a>
  <ul>
  <li><a href="about.jsp">About</a></li>
  <li><a href="job-page.jsp">Job Page</a></li>
  <li><a href="job-details.jsp">Job Details</a></li>
  <li><a href="resume.jsp">Resume Page</a></li>
  <li><a href="faq.jsp">FAQ</a></li>
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
  <li class="btn-m"><a href="index.jsp"><i class="ti-lock"></i> Logout</a></li>
  </ul>
  
  </nav>
  
  <div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
  
  <div class="close" data-toggle="offcanvas" data-target=".navmenu">
  <i class="ti-close"></i>
  </div>
  <h3 class="title-menu">All Pages</h3>
   <ul class="nav navmenu-nav">
  <li><a href="index.jsp">Home</a></li>
  <li><a href="about.jsp">About us</a></li>
  <li><a href="job-page.jsp">Job Page</a></li>
  <li><a href="job-details.jsp">Job Details</a></li>
  <li><a href="candidataccount.jsp">My account</a></li>
  <li><a href="pricing.jsp">Pricing Tables</a></li>
  <li><a href="browse-jobs.jsp">Browse Jobs</a></li>
  <li><a href="browse-categories.jsp">Browse Categories</a></li>
  <li><a href="add-resume.jsp">Add Resume</a></li>
  <li><a href="manage-resumes.jsp">Manage Resumes</a></li>
  <li><a href="job-alerts.jsp">Job Alerts</a></li>
  <li><a href="post-job.jsp">Add Job</a></li>
  <li><a href="manage-jobs.jsp">Manage Jobs</a></li>
  <li><a href="manage-applications.jsp">Manage Applications</a></li>
  <li><a href="browse-resumes.jsp">Browse Resumes</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="faq.jsp">Faq</a></li>
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
  <h2 class="product-title">Job Alerts</h2>
  <ol class="breadcrumb">
  <li><a href="#"><i class="ti-home"></i> Home</a></li>
  <li class="current">Job Alerts</li>
  </ol>
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
  <li><a class="active" href="notifications.jsp">Notifications<i class="fa fa-bell" aria-hidden="true"></i> <span class="notinumber">3</span></a></li>
  <li><a  href="messages.jsp">Messages <i class="fa fa-comments" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  </ul>
  <ul class="lest">
  <li><a href="changepassword.jsp">Change Password</a></li>
  <li><a href="index.jsp">Sing Out</a></li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-8 col-sm-8 col-xs-12">
  <div class="job-alerts-item notification">
  <h3 class="alerts-title">Your Notifications</h3>
  <div class="notification-item">
  <div class="thums">
  <img src="assets/img/jobs/img-1.jpg" alt=""/>
   </div>
  <div class="text-left">
  <p>Aicha neffati effectuer une demande de votre offre "Spring Developper".</p>
  <span class="time"><i class="ti-time"></i>3 Hours ago</span>
  </div>
  </div>
  <div class="notification-item">
  <div class="thums">
  <img src="assets/img/jobs/img-2.jpg" alt=""/>
  </div>
  <div class="text-left">
  <p>Amjed Mahmoudi effectuer une demande de votre offre "web designer".</p>
  <span class="time"><i class="ti-time"></i>3 Hours ago</span>
  </div>
  </div>
  <div class="notification-item">
  <div class="thums">
  <img src="assets/img/jobs/img-5.jpg" alt=""/>
  </div>
  <div class="text-left">
  <p>William a effectuer une demande de votre offre "php developper"</p>
  <span class="time"><i class="ti-time"></i>3 Hours ago</span>
  </div>
  </div>
  <ul class="pagination">
  <li class="active"><a href="#" class="btn btn-common"><i class="ti-angle-left"></i> prev</a></li>
  <li><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li class="active"><a href="#" class="btn btn-common">Next <i class="ti-angle-right"></i></a></li>
  </ul>
  
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
  <a class="twitter" href="https://twitter.com/GrayGrids"><i class="ti-twitter-alt"></i></a>
  <a class="facebook" href="https://web.facebook.com/GrayGrids"><i class="ti-facebook"></i></a>
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
  <p>All Rights reserved © 2019 - Designed &amp; Developed by <a rel="nofollow" href="">Amjed et Aicha</a></p>
  </div>
  </div>
  </div>
  </div>
  
  </footer>
  
  
  <a href="#" class="back-to-top" style="display: none;">
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
  </div></body></html>