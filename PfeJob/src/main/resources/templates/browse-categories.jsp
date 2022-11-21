<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="author" content="Jobboard"/>
    
    <title>JobBoard - Bootstrap HTML5 Job Portal Template</title>    

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
                        <a href="resume.jsp">
                        Resume Page
                        </a>
                      </li>
                      <li>
                        <a href="privacy-policy.jsp">
                        Privacy Policy
                        </a>
                      </li>
                      <li>
                        <a href="faq.jsp">
                        FAQ
                        </a>
                      </li>
                      <li>
                        <a href="pricing.jsp">
                        Pricing Tables
                        </a>
                      </li>
                      <li>
                        <a href="contact.jsp">
                        Contact
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li>
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
                        <a class="active" href="browse-categories.jsp">
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
                  <li>
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
                  <li class="right"><a href="my-account.jsp"><i class="ti-lock"></i>  Log In</a></li>
                </ul>
              </div>
            </div>
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a href="index.jsp">Home</a>
               
              </li>
              <li>
                <a href="about.jsp">Pages</a>
                <ul>
                  <li><a href="contact.jsp">Contact</a></li>
                </ul>
              </li>
              <li>
                <a class="active" href="#">For Candidates</a>
                <ul>
                  <li><a href="browse-jobs.jsp">Browse Jobs</a></li>
                  <li><a class="active" href="browse-categories.jsp">Browse Categories</a></li>
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
              <li>
                <a href="blog.jsp">Blog</a>
                <ul class="dropdown">
                  <li><a href="blog.jsp">Blog - Right Sidebar</a></li>
                  <li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li>
                  <li><a href="blog-full-width.jsp">Blog - Full Width</a></li>
                  <li><a href="single-post.jsp">Blog Single Post</a></li>
                </ul>
              </li>  
              <li class="btn-m"><a href="post-job.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              <li class="btn-m"><a href="my-account.jsp"><i class="ti-lock"></i>  Log In</a></li>          
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
                     <li><a href="my-account.jsp">Login</a></li>
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
                <h2 class="product-title">Categories</h2>
                <ol class="breadcrumb">
                  <li><a href="#"><i class="ti-home"></i> Home</a></li>
                  <li class="current">Browse Categories</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page Header End --> 

      <section class="section">
        <div class="container">
        <h2 class="section-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Parcourir les catégories</font></font></h2>
        <div class="row">
        <div class="col-md-12">
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-home"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">La finance</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4286 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a th:href="@{searchCategories(categorie=finance)">
        <div class="icon">
        <i class="ti-world"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Vente / marquage</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2000 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-book"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Education / Formation</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1450 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-desktop"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Les technologies</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5100 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-brush"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Design d'art</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5079 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-heart"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Soins de santé</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3235 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-filter"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Science</font></font></h3>
         <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1800 emplois</font></font></p>
        </a>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12 f-category">
        <a href="browse-categories.jsp">
        <div class="icon">
        <i class="ti-cup"></i>
        </div>
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Les services alimentaires</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4286 emplois</font></font></p>
        </a>
        </div>
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
                    <li><a href="#">Terms and Conditions</a></li>
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
                <p>All Rights reserved copy; 2017 - Designed and Developed by <a rel="nofollow" href="http://graygrids.com">GrayGrids</a></p>   
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
    </div>  
  </body>
</html>