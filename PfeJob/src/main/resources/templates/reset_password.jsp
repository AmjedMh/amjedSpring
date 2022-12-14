<html lang="en" class="" xmlns:th="http://www.thymeleaf.org"><head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="author" content="Jobboard"/>
  <title>JobBoard -Account Manager</title>
  
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
  <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"/>
  </head>
  <body>
  
  <div class="header">
  <div class="logo-menu">
  <nav class="navbar navbar-default main-navigation affix-top" role="navigation" data-spy="affix" data-offset-top="50">
  <div class="container">
  
  <div class="navbar-header"><div class="slicknav_menu"><jobs aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></jobs><ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="index.jsp" tabindex="-1">Home</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  </ul>
  </li>
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="about.jsp" tabindex="-1">Pages</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="about.jsp" role="menuitem" tabindex="-1">About</a></li>
  <li><a href="job-page.jsp" role="menuitem" tabindex="-1">Job Page</a></li>
  <li><a href="job-details.jsp" role="menuitem" tabindex="-1">Job Details</a></li>
  <li><a href="resume.jsp" role="menuitem" tabindex="-1">Resume Page</a></li>
  
  <li><a href="faq.jsp" role="menuitem" tabindex="-1">FAQ</a></li>
  
  <li><a href="contact.jsp" role="menuitem" tabindex="-1">Contact</a></li>
  </ul>
  </li>
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
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
  <ul class="dropdown">
  <li>
  <a class="active" href="index.jsp">
  Home 1
  </a>
  </li>
 
 
  
  </ul>
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
  <a href="resume.jsp">
  Resume Page
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
  <ul>
  <li><a href="index.jsp">Home </a></li>
  </ul>
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
  <li><a href="resume.jsp">Resume Page</a></li>
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
  <li><a href="index.jsp">Logout</a></li>
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
  <li><a href="resume.jsp">My Resume</a></li>
  <li><a href="bookmarked.jsp">Applied Jobs</a></li>
  <li><a href="notifications.jsp">Notifications <span class="notinumber">2</span></a></li>
  </ul>
  <ul class="lest item">
  <li><a href="job-alerts.jsp">Job Alerts</a></li>
  </ul>
  <ul class="lest">
  <li><a class="active" href="change-password.jsp">Change Password</a></li>
  <li><a href="index.jsp">Sing Out</a></li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-8 col-sm-8 col-xs-12">
  <div class="job-alerts-item">
  <div th:if="${message != null}">
    <p class="alert alert-success alert-dismissable">[[${message}]]</p>
  </div>
  <h3 class="alerts-title">Reset Password</h3>
  <form class="form" th:action="@{/reset_password}" method="post">
   <input type="hidden" name="token" th:value="${token}" />
  <div class="form-group is-empty">
  <label class="control-label" for="textarea">New Password*</label>
  <input class="form-control" type="password" name="password"/>
  <span class="material-input"></span>
  <span class="material-input"></span></div>
  <div class="form-group is-empty">
    <label class="control-label" for="textarea">Confirm Password*</label>
    <input class="form-control" type="password" name="password"/>
    <span class="material-input"></span>
    <span class="material-input"></span></div>
  <Button type="submit" class="btn btn-common">Change Password</Button>
  </form>
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
  <p>All Rights reserved ? 2019 - Designed &amp; Developed by <a rel="nofollow" href="http://graygrids.com">JoudTeam</a></p>
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
  
  </div><div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;"><div><div class="logo"><img src="https://www.gstatic.com/images/branding/product/1x/translate_24dp.png" width="20" height="20" alt="Google Traduction"/></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">Texte d'origine</h1></div><div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">Proposer une meilleure traduction</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"/><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div><div id="color-style-switcher"><div><h3>Color Palette</h3><ul class="colors"><li><a class="color1 active" href="#"></a></li><li><a class="color2" href="#"></a></li><li><a class="color3" href="#"></a></li><li><a class="color4" href="#"></a></li><li><a class="color5" href="#"></a></li><li><a class="color6" href="#"></a></li></ul></div><div class="bottom"> <a href="#" class="settings"><i class="ti-settings"></i></a> </div></div><div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div></body></html>