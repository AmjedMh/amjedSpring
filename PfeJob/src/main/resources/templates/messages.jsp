<html lang="en"><head>
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
  <style type="text/css">
  .containerchat {
  border: 2px solid #dedede;
  background-color: #f1f1f1;
  border-radius: 5px;
  padding: 10px;
  margin: 10px 0;
}

.darker {
  border-color: #ccc;
  background-color: #ddd;
}

.container::after {
  content: "";
  clear: both;
  display: table;
}

.container img {
  float: left;
  max-width: 60px;
  width: 100%;
  margin-right: 20px;
  border-radius: 50%;
}

.container img.right {
  float: right;
  margin-left: 20px;
  margin-right:0;
}

.time-right {
  float: right;
  color: #aaa;
}

.time-left {
  float: left;
  color: #999;
}
  </style>
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
  <li><a href="index.jsp" role="menuitem" tabindex="-1">Home 1</a></li>
  <li><a href="index-02.jsp" role="menuitem" tabindex="-1">Home 2</a></li>
  <li><a href="index-03.jsp" role="menuitem" tabindex="-1">Home 3</a></li>
  <li><a href="index-04.jsp" role="menuitem" tabindex="-1">Home 4</a></li>
  </ul>
  </li>
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
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="#" tabindex="-1">For Employers</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="post-job.jsp" role="menuitem" tabindex="-1">Add Job</a></li>
  <li><a href="manage-jobs.jsp" role="menuitem" tabindex="-1">Manage Jobs</a></li>
  <li><a href="manage-applications.jsp" role="menuitem" tabindex="-1">Manage Applications</a></li>
  <li><a href="browse-resumes.jsp" role="menuitem" tabindex="-1">Browse Resumes</a></li>
  </ul>
  </li>
  <li class="slicknav_collapsed slicknav_parent"><jobs role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;">
  <a href="blog.jsp" tabindex="-1">Blog</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
  <li><a href="blog.jsp" role="menuitem" tabindex="-1">Blog - Right Sidebar</a></li>
  <li><a href="blog-left-sidebar.jsp" role="menuitem" tabindex="-1">Blog - Left Sidebar</a></li>
  <li><a href="blog-full-width.jsp" role="menuitem" tabindex="-1">Blog - Full Width</a></li>
  <li><a href="single-post.jsp" role="menuitem" tabindex="-1">Blog Single Post</a></li>
  </ul>
  </li>
  <li class="btn-m"><a href="post-job.jsp" role="menuitem" tabindex="-1"><i class="ti-pencil-alt"></i> Post A Job</a></li>
  <li class="btn-m"><a href="logins.jsp" role="menuitem" tabindex="-1"><i class="ti-lock"></i> Log In</a></li>
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
  <a href="about.jsp">
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
  <a class="active" href="resume.jsp">
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
  <li class="drop">
  <a href="#">
  Employers <i class="fa fa-angle-down"></i>
  </a>
  <ul class="dropdown">
  <li>
  <a href="post-job.jsp">
  Add Job
  </a>
  </li>
  <li>
  <a href="manage-jobs.jsp">
  Manage Jobs
  </a>
  </li>
  <li>
  <a href="manage-applications.jsp">
  Manage Applications
  </a>
  </li>
  <li>
  <a href="browse-resumes.jsp">
  Browse Resumes
  </a>
  </li>
  </ul>
  </li>
  <li class="drop">
  <a href="blog.jsp">
  Blog <i class="fa fa-angle-down"></i>
  </a>
  
  </li>
  </ul>
  <ul class="nav navbar-nav navbar-right float-right">
 <li class="left" th:if="${#httpServletRequest.remoteUser}!=null"><a th:href="@{/login?logout}"><i class="ti-pencil-alt"></i>Logout</a></li>
                  <li class="right" th:if="${#httpServletRequest.remoteUser}==null"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li>
  </ul>
  </div>
  </div>
  
  <ul class="wpb-mobile-menu">
  <li>
  <a href="index.jsp">Home</a>
  <ul>
  <li><a href="index.jsp">Home 1</a></li>
  <li><a href="index-02.jsp">Home 2</a></li>
  <li><a href="index-03.jsp">Home 3</a></li>
  <li><a href="index-04.jsp">Home 4</a></li>
  </ul>
  </li>
  <li>
  <a class="active" href="about.jsp">Pages</a>
  <ul>
  <li><a href="about.jsp">About</a></li>
  <li><a href="job-page.jsp">Job Page</a></li>
  <li><a href="job-details.jsp">Job Details</a></li>
  <li><a class="active" href="resume.jsp">Resume Page</a></li>
  <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
  <li><a href="faq.jsp">FAQ</a></li>
  <li><a href="pricing.jsp">Pricing Tables</a></li>
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
  <li><a href="about.jsp">About us</a></li>
  <li><a href="job-page.jsp">Job Page</a></li>
  <li><a href="job-details.jsp">Job Details</a></li>
  <li><a href="resume.jsp">Resume Page</a></li>
  <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
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
  <h2 class="product-title">Resume</h2>
  <ol class="breadcrumb">
  <li><a href="#"><i class="ti-home"></i> Home</a></li>
  <li class="current">Resume</li>
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
  <li><a  href="resume.jsp">My Resume</a></li>
  <li><a  href="appliedjobs.jsp">Applied jobs</a></li>
  <li><a href="notifications.jsp">Notifications <i class="fa fa-bell" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  <li><a class="active" href="messages.jsp">Messages <i class="fa fa-comments" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  </ul>
  <ul class="lest item">
  <li><a href="manage-resumes.jsp">Manage Resume</a></li>
  </ul>
  <ul class="lest">
  <li><a href="change-password.jsp">Change Password</a></li>
  <li><a href="index.jsp">Sing Out</a></li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-8 col-sm-8 col-xs-12">
<div class="job-alerts-item">
<h3 class="alerts-title">Messages</h3>

<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="icon">
                      <i class="ti-user"></i>
                    </div>
<h3>william</h3>
<span> <h6 style="color:red;">mercie pour l'opportunité</h6></span>
</div>

<div class="col-md-2">
<p>Nov 18:20</p>
</div>

</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="icon">
                      <i class="ti-user"></i>
                    </div>
<h3>Adam Adam</h3>
<a href="" data-toggle="modal" data-target="#myModal"><span><h6 style="color:red;">JE voie que je suis le meilleur pour cette offre</h6></span></a>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" Style="background-color:red;opacity:0.5;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" float="center">Chat Box</h4>
        </div>
        <div class="modal-body">
          <p><div class="containerchat">
  <div class="icon">
                      <i class="ti-user"></i>
                    </div>
  <p>Bonjour Monsieur</p>
  <span class="time-right">11:00</span>
</div>

<div class="container darker">
  <div class="icon">
                      <i class="ti-user"></i>
                    </div>
  <p>bonjour</p>
  <span class="time-left">11:01</span>
</div>

<div class="containerchat">
  <div class="icon">
                      <i class="ti-user"></i>
                    </div>
  <p>est-ce notre demande d'emploi est traité ou non </p>
  <span class="time-right">11:02</span>
</div>

<div class="container darker">
  <div class="icon">
                      <i class="ti-user"></i>
                    </div>
  <p>nous sommes en cours de recevoir les demandes</p>
  <span class="time-left">11:05</span>
</div></p>
<textarea style="height:40px;width:500px;" id="status_message" placeholder="Type a message..." rows="10" cols="40" name="message"></textarea>
        <div class="input-group-append">
									<span class="input-group-text send_btn"><i class="fa fa-location-arrow"></i></span>
								</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<div class="col-md-2">
<p> 19:57</p>
</div>

</div>
</div>
<div class="applications-content">
<div class="row">
<div class="col-md-5">
<div class="icon">
                      <i class="ti-user"></i>
                    </div>
<h3>Aicha neffati</h3>
<span>mercie pour le feedback</span>
</div>

<div class="col-md-2">
<p>22:56</p>
</div>

</div>
</div>

<br/>
<ul class="pagination">
<li class="active"><a href="#" class="btn btn-common"><i class="ti-angle-left"></i> prev</a></li>
<li><a href="#">1</a></li>
<li><a href="#">2</a></li>

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
  <p>All Rights reserved © 2019 - Designed &amp; Developed by <a rel="nofollow" href="">Amjed e Aicha</a></p>
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