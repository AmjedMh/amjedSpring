<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8"/>
    <meta xmlns:th="http://www.thymeleaf.org"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="author" content="Jobboard"/>
    <title>JobBoard</title> 
 <!--===============================================================================================-->	
 <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
 <!--===============================================================================================-->
 <link rel="icon" type="image/png" href="images/icons/icon-google.ico"/>
 
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
   <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css"/>
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
 <!--===============================================================================================-->	
   <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
 <!--===============================================================================================-->	
   <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
 <!--===============================================================================================-->
 <link rel="stylesheet" type="text/css" href="js/main.js"/>
 <!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="css/util.css"/>
   <link rel="stylesheet" type="text/css" href="css/main.css"/>
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
    <link rel="stylesheet" type="text/css" href="assets/css/colors/red.css" media="screen" />
    
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
                    <a href="login.jsp">
                    Home <i class="fa fa-angle-down"></i>
                    </a>
                    
                  </li>
                 
                  <li>
                    <a href="#">
                    Candidates <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown">
                      
                      <li>
                        <a href="login.jsp">
                        Add Resume
                        </a>
                      </li>
                      <li>
                        <a href="login.jsp">
                        Mes demandes
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
                        <a href="login.jsp">
                        Add Job
                        </a>
                      </li>
                     
                      
                      <li>
                        <a href="login.jsp">
                        Browse Resumes
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="login.jsp">Contact<i class="fa fa-angle-down"></i></a>
                   
                  </li>
                </ul>
                <ul class="nav navbar-nav navbar-right float-right">
                  <li class="left"><a href="login.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
                  <li class="right"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li>
                </ul>
              </div>
            </div>
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a href="login.jsp">Home</a>
                                      
              </li>
              <li>
                <a href="about.jsp">Pages</a>
                <ul>
                  <li><a href="about.jsp">About</a></li>
                  <li><a href="job-page.jsp">Job Page</a></li>
                  <li><a href="job-details.jsp">Job Details</a></li>
                  <li><a href="resume.jsp">Resume Page</a></li>
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
              <li class="btn-m"><a  class="active" href="my-account.jsp"><i class="ti-lock"></i>  Log In</a></li>          
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
               
                <li><a href="login.jsp">Login</a></li>
              </ul><!--- End Menu -->
          </div> <!--- End Off Canvas Side Menu -->
          <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
            <p><i class="ti-files"></i> All Pages</p>
          </div>
        </div>
      </div>
      <!-- Header Section End -->  

      <!-- Page Header Start -->
      <div class="page-header" style="background: url(assets/img/banner1.jpg);">
        <div class="container">
          <div class="row">         
            <div class="col-md-12">
              <div class="breadcrumb-wrapper">
                <h2 class="product-title">My Account</h2>
                <ol class="breadcrumb">
                  <li><a href="#"><i class="ti-home"></i> Home</a></li>
                  <li class="current">My Account</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Page Header End -->  
      <div class="limiter">
        <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
          <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
            <form class="login100-form validate-form flex-sb flex-w" th:action="@{/login}" method='POST' th:object="${compte}">
              <div th:if="${succesmsg != null}">
    <p class="alert alert-success alert-dismissable">[[${succesmsg}]]</p>
</div>
  <div th:if="${VerifSuccess != null}" >
    <p class="alert alert-success alert-dismissable">[[${VerifSuccess}]]</p>
</div>
  <div th:if="${Veriffail != null}" style="margin-left:30%;" >
    <p class="alert alert-danger alert-dismissable">[[${Veriffail}]]</p>
</div>
  <div th:if="${error != null}" style="margin-left:30%;">
    <p class="alert alert-danger alert-dismissable">[[${error}]]</p>
</div>
         
              <span class="login100-form-title p-b-53">
 
                Sign In With
              </span>
          
              <a th:href="@{/auth/facebook}" class="btn-face m-b-20">
                <i class="fa fa-facebook-official"></i>
                Facebook
              </a>
   
              <a href="/user" class="btn-google m-b-20" >
                <img src="images/icons/icon-google.png" alt="GOOGLE"/>
                Google
              </a>
              <div class="p-t-31 p-b-9">
                <span class="txt1">
                  Email
                </span>
              </div>
              <div class="wrap-input100 validate-input" data-validate = "email is required">
                <input class="input100" th:field="*{email}" type="text" name="email" id="email"/>
                <span class="focus-input100"></span>
              </div>
              
              <div class="p-t-13 p-b-9">
                <span class="txt1">
                  Password
                </span>
    
                <a th:href="@{/forgotpassword.jsp}" class="txt2 bo1 m-l-5">
                  Forgot Password?
                </a>
              </div>
              <div class="wrap-input100 validate-input" data-validate = "Password is required">
                <input class="input100" th:field="*{password}" type="password" name="password" id="passwordId" />
                <span class="focus-input100"></span>
              </div>
              <div class="container-login100-form-btn m-t-17">
                <input type="submit" onclick="validation();" class="login100-form-btn"/>
              </div>
              <div class="w-full text-center p-t-55">
                <span class="txt2">
                  Not a member?
                </span>
    
                <a th:href="@{/inscription}" class="txt2 bo1">
                  Sign up now
                </a>
              </div>
            </form>
            <form action="/connect/facebook" method="POST">
			<input type="hidden" name="scope" value="user_posts" />
			<div class="formInfo">
				<p>You aren't connected to Facebook yet. Click the button to connect this application with your Facebook account.</p>
			</div>
			<p><button type="submit">Connect to Facebook</button></p>
		</form>
          </div>
        </div>
      </div>
      
    
      <div id="dropDownSelect1"></div>
      
     

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
                <p>All Rights reserved copy; 2021 - Designed et Developed by <a rel="nofollow" href="http://graygrids.com">GrayGrids</a></p>   
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
    <script type="text/javascript" src="js/main.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <script type="text/javascript">
var email='compte.getEmail()'
var password='compte.getPassword()'

</script>

  </body>
</html>