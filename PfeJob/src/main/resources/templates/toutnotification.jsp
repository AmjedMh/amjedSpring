<html lang="en" xmlns:th="http://www.thymeleaf.org"><head>
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
  <a href="#" tabindex="-1">For Employers</a>
  <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></jobs><ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
  <li><a href="post-job.jsp" role="menuitem" tabindex="-1">Add Job</a></li>
  
  </ul>
  </li>
  <li class="left" th:if="${#httpServletRequest.remoteUser}!=null"><a th:href="@{/login?logout}"><i class="ti-pencil-alt"></i>Logout</a></li>
                  <li class="right" th:if="${#httpServletRequest.remoteUser}==null"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li></ul></div>
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
  <a href="#">
  Employers <i class="fa fa-angle-down"></i>
  </a>
  <ul class="dropdown">
  <li>
  <a href="post-job.jsp">
  Add Job
  </a>
  </li>
  
 
  </ul>
  </li>
  </ul>
  <ul class="nav navbar-nav navbar-right float-right">
   <li class="left" th:if="${#httpServletRequest.remoteUser}!=null"><a th:href="@{/login?logout}"><i class="ti-pencil-alt"></i>Logout</a></li>
                  <li class="right" th:if="${#httpServletRequest.remoteUser}==null"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li></ul>
  </div>
  </div>
  

  
  </nav>
  
  <div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
  
  <div class="close" data-toggle="offcanvas" data-target=".navmenu">
  <i class="ti-close"></i>
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
  <li><a th:href="@{/toutnotification(id=${compte.id})}">Notifications <i class="fa fa-bell" aria-hidden="true"></i><span class="notinumber" >0</span></a></li>
  <li><a href="messages.jsp">Messages <i class="fa fa-comments" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  </ul>
  <ul class="lest">
  <li><a href="change-password.jsp">Change Password</a></li>
  <li><a  th:href="@{/login?logout}">Log out</a></li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-8 col-sm-8 col-xs-12">
  <div class="inner-box my-resume">
  <div class="author-resume">
  
  <section class="find-job section">
      <div class="container">
        <h2 class="section-title">Notification</h2>
        <div class="row">
          
          
            <div class="col-md-12 job-list"  th:each="p:${toutnotif}">
             <div th:if="${p.off != null}">
             <table><tr><td><a th:href="@{offreDetails(id_offre=${p.off.id_offre})}"><p th:text="${p.text}"></p></a></td></tr></table>
             </div>
             <div th:if="${p.off == null}">
             <table><tr><td><a th:href="@{mesDemandes}"><p th:text="${p.text}"></p></a></td></tr></table>
             </div>
             
            </div>
            
         
          <div class="col-md-12">
            <div class="showing pull-left">
              <a href="#">Showing <span>6-10</span> Of 24 Jobs</a>
            </div>                    
            <ul class="pagination pull-right">              
              <li class="active"><a th:href="@{index}" class="btn btn-common" ><i class="ti-angle-left"></i> prev</a></li>
              <li th:class="${pagecourante}==${status.index}?'active':''" th:each="pa,status:${pages}" >
              <a th:href="@{index(page=${status.index},size=${size})}" th:text="${status.index}"></a></li>
              <li class="active"><a href="#" class="btn btn-common">Next <i class="ti-angle-right"></i></a></li>
            </ul>
          </div>
          
        </div>
      </div>
    </section>
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
  <p>All Rights reserved © 2017 - Designed &amp; Developed by <a rel="nofollow" href="http://graygrids.com">GrayGrids</a></p>
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
  
  </div>
  </body></html>