<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th = "http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="author" content="Jobboard"/>
    
    <title>JobBoard -Resume Management</title>    

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
  <body>  
      <!-- Header Section Start -->
      <div class="header">    
        <div class="logo-menu">
          <nav class="navbar navbar-default main-navigation" role="navigation" data-spy="affix" data-offset-top="50">
            <div class="container">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand logo" href="index.jsp"><img src="assets/img/logo.png" alt=""/></a>
              </div>

              <div class="collapse navbar-collapse" id="navbar">              
                 <!-- Start Navigation List -->
                <ul class="nav navbar-nav">
                  <li>
                    <a href="index.jsp">
                    Home <i class="fa fa-angle-down"></i>
                    </a>
                    
                  </li>
                  <li>
                    <a href="about.jsp">
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
                  <li th:if="${session.role == 'c'}">
                    <a class="active" href="#">
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
                        <a class="active" href="manage-resumes.jsp">
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
                  <li th:if="${session.role == 'R'}">
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
                  
                </ul>
                <ul class="nav navbar-nav navbar-right float-right">
                  <li class="left"><a href="post-job.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              
                </ul>
              </div>
            </div>
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              
              <li>
                <a href="about.jsp">Pages</a>
                <ul>
                  <li><a href="about.jsp">About</a></li>
                  <li><a href="job-page.jsp">Job Page</a></li>
                  <li><a href="job-details.jsp">Job Details</a></li>
                  
                  <li><a href="faq.jsp">FAQ</a></li>
                  
                  <li><a href="contact.jsp">Contact</a></li>
                </ul>
              </li>
              <li>
                <a class="active" href="#">For Candidates</a>
                <ul>
                  <li><a href="browse-jobs.jsp">Browse Jobs</a></li>
                  <li><a href="browse-categories.jsp">Browse Categories</a></li>
                  <li><a href="add-resume.jsp">Add Resume</a></li>
                  <li><a class="active" href="manage-resumes.jsp">Manage Resumes</a></li>
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
              <li class="btn-m"><a href="index.jsp"><i class="ti-lock"></i>  Logout</a></li>          
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
                <li><a href="about.jsp">About us</a></li>            
                <li><a href="job-page.jsp">Job Page</a></li>             
                <li><a href="job-details.jsp">Job Details</a></li>    
                <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
                <li><a href="browse-jobs.jsp">Browse Jobs</a></li>
                <li><a href="browse-categories.jsp">Browse Categories</a></li>
                <li><a href="manage-resumes.jsp">Manage Resumes</a></li> 
                <li><a href="job-alerts.jsp">Job Alerts</a></li> 
                <li><a href="post-job.jsp">Add Job</a></li>  
                <li><a href="manage-jobs.jsp">Manage Jobs</a></li>
                <li><a href="manage-applications.jsp">Manage Applications</a></li>
                <li><a href="browse-resumes.jsp">Browse Resumes</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="faq.jsp">Faq</a></li>
                <li><a href="index.jsp">Logout</a></li>
              </ul><!--- End Menu -->
          </div> <!--- End Off Canvas Side Menu -->
          <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
            <p><i class="ti-files"></i> All Pages</p>
          </div>
      </div>
      <!-- Header Section End -->  

      <!-- Page Header Start -->
      <div class="page-header" style="background: url(assets/img/banner1.jpg);">
        <div class="container">
          <div class="row">         
            <div class="col-md-12">
              <div class="breadcrumb-wrapper">
                <h2 class="product-title">Manage Resumes</h2>
                <ol class="breadcrumb">
                  <li><a href="#"><i class="ti-home"></i> Home</a></li>
                  <li class="current">Manage Resumes</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page Header End --> 

      <section class="section text-center" >
        <div class="container">
          <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
          <div class="right-sideabr">
  <div class="inner-box">
  <h4>Manage Account</h4>
  <ul class="lest item">
  <li><a class="active" href="resume.jsp">My Resume</a></li>
  <li><a href="mesDemandes.jsp">Applied jobs</a></li>
  <li><a href="notifications.jsp">Notifications <i class="fa fa-bell" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
  <li><a href="messages.jsp">Messages <i class="fa fa-comments" aria-hidden="true"></i><span class="notinumber">2</span></a></li>
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
          <div class="job-alerts-item candidates">
          <h3 class="alerts-title">Manage Resumes</h3>
          <div class="manager-resumes-item">
          <div class="manager-content">
          <a href="resume.jsp"><img class="resume-thumb" src="assets/img/jobs/avatar.jpg" alt=""/></a>
          <div class="manager-info">
          <div class="manager-name">
          <h4><a href="#">John Doe</a></h4>
           <h5>Front-end developer</h5>
          </div>
          <div class="manager-meta">
          <span class="location"><i class="ti-location-pin"></i> Cupertino, CA, USA</span>
          <span class="rate"><i class="ti-time"></i> $55 per hour</span>
          </div>
          </div>
          </div>
          <div class="update-date">
          <p class="status">
          <strong>Updated on:</strong> Fab 22, 2017
          </p>
          <div class="action-btn">
          <a class="btn btn-xs btn-gray" href="#">Hide</a>
          <a class="btn btn-xs btn-gray" href="#">Edit</a>
          <a class="btn btn-xs btn-danger" href="#">Delete</a>
          </div>
          </div>
          </div>
          <div class="manager-resumes-item">
          <div class="manager-content">
          <a href="resume.jsp"><img class="resume-thumb" src="assets/img/jobs/avatar.jpg" alt=""/></a>
          <div class="manager-info">
          <div class="manager-name">
          <h4><a href="#">John Doe</a></h4>
          <h5>Front-end developer</h5>
          </div>
          <div class="manager-meta">
          <span class="location"><i class="ti-location-pin"></i> Cupertino, CA, USA</span>
          <span class="rate"><i class="ti-time"></i> $55 per hour</span>
          </div>
          </div>
          </div>
          <div class="update-date">
          <p class="status">
          <strong>Updated on:</strong> Fab 22, 2017
          </p>
          <div class="action-btn">
          <a class="btn btn-xs btn-gray" href="#">Hide</a>
          <a class="btn btn-xs btn-gray" href="#">Edit</a>
          <a class="btn btn-xs btn-danger" href="#">Delete</a>
          </div>
          </div>
          </div>
          <div class="manager-resumes-item">
          <div class="manager-content">
          <a href="resume.jsp"><img class="resume-thumb" src="assets/img/jobs/avatar.jpg" alt=""/></a>
          <div class="manager-info">
          <div class="manager-name">
          <h4><a href="#">John Doe</a></h4>
          <h5>Front-end developer</h5>
          </div>
          <div class="manager-meta">
          <span class="location"><i class="ti-location-pin"></i> Cupertino, CA, USA</span>
          <span class="rate"><i class="ti-time"></i> $55 per hour</span>
          </div>
          </div>
          </div>
          <div class="update-date">
          <p class="status">
          <strong>Updated on:</strong> Fab 22, 2017
          </p>
          <div class="action-btn">
          <a class="btn btn-xs btn-gray" href="#">Hide</a>
          <a class="btn btn-xs btn-gray" href="#">Edit</a>
          <a class="btn btn-xs btn-danger" href="#">Delete</a>
          </div>
          </div>
          </div>
          <div class="manager-resumes-item">
          <div class="manager-content">
          <a href="resume.jsp"><img class="resume-thumb" src="assets/img/jobs/avatar.jpg" alt=""/></a>
          <div class="manager-info">
          <div class="manager-name">
          <h4><a href="#">John Doe</a></h4>
          <h5>Front-end developer</h5>
          </div>
          <div class="manager-meta">
          <span class="location"><i class="ti-location-pin"></i> Cupertino, CA, USA</span>
          <span class="rate"><i class="ti-time"></i> $55 per hour</span>
          </div>
          </div>
          </div>
          <div class="update-date">
          <p class="status">
          <strong>Updated on:</strong> Fab 22, 2017
          </p>
          <div class="action-btn">
          <a class="btn btn-xs btn-gray" href="#">Hide</a>
          <a class="btn btn-xs btn-gray" href="#">Edit</a>
          <a class="btn btn-xs btn-danger" href="#">Delete</a>
          </div>
          </div>
          </div>
          <a class="btn btn-common btn-sm" href="add-resume.jsp">Add new resume</a>
          </div>
          </div>
          </div>
          </div>
      </section></div>

      <!-- Footer Section Start -->
      <footer>
        <!-- Footer Area Start -->
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
        <!-- Footer area End -->
        
        <!-- Copyright Start  -->
        <div id="copyright">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <p>All Rights reserved &copy; 2019- Designed &amp; Developed by <a rel="nofollow" href="http://graygrids.com">JoudTeam</a></p>   
              </div>
            </div>
          </div>
        </div>
        <!-- Copyright End -->

      </footer>
      <!-- Footer Section End -->  
      
      <!-- Go To Top Link -->
      <a href="#" class="back-to-top">
        <i class="ti-arrow-up"></i>
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
    <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js"></script>
      
  </body>
</html>