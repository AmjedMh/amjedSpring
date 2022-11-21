<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head/>
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
  <head/>
  <body>  
      <!-- Header Section Start -->
      <div class="header">    
        <!-- Start intro section -->
        <section id="intro" class="section-intro">
          <div class="logo-menu">
            <nav class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="50">
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
                    <a class="active" href="index.jsp">
                    Home 
                    </a>
                    
                  </li>
                 
                  <li th:if="${session.role == 'c'}">
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
                  <li th:if="${session.role == 'R'}">
                    <a href="#" >
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
                  <li>
                    <a href="contact.jsp">
                    contact<i class="fa fa-angle-down"></i>
                    </a>
                    
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right float-right" th:object="${compte}">
                  <li class="left" th:if="${session.role == 'R'}"><a href="post-job.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
                  <li class="left" th:if="${session.user}!=null"><a th:href="@{RecruteurAccount.jsp}" th:utext="${session.userName}"><i class="ti-user"></i> </a>
                  </li>
                   <li class="left" th:if="${session.user}!=null"><a th:href="@{logout}"><i class="ti-pencil-alt"></i>Logout</a></li>
                  <li class="right" th:if="${session.user}==null"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li>
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
                  <li><a href="resume.jsp">Resume Page</a></li>
                  
                  <li><a href="faq.jsp">FAQ</a></li>
                  
                  <li><a href="contact.jsp">Contact</a></li>
                </ul>
              </li>
              <li th:if="${session.role == 'c'}">
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
                <a href="#" th:if="${session.role == 'R'}">For Employers</a>
                <ul>
                  <li><a href="post-job.jsp">Add Job</a></li>
                  <li><a href="manage-jobs.jsp">Manage Jobs</a></li>
                  <li><a href="manage-applications.jsp">Manage Applications</a></li>
                  <li><a href="browse-resumes.jsp">Browse Resumes</a></li>
                </ul>
              </li> 
              
              <li class="btn-m"><a href="post-job.jsp"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              <li class="btn-m"><a href="login.jsp"><i class="ti-lock"></i>  Log In</a></li>
                     
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
            </ul><!--- End Menu -->
          </div> <!--- End Off Canvas Side Menu -->
          <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite" data-wow-duration="500ms" data-toggle="offcanvas" data-target=".navmenu">
            <p><i class="ti-files"></i> All Pages</p>
          </div>
      </div>
      <!-- Header Section End -->    

      <div class="search-container">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h1>Find the job that fits your life</h1><br/><h2>More than <strong>12,000</strong> jobs are waiting to Kickstart your career!</h2>
              <div class="content">
                <form method="post" th:action="@{rechercheoffre}">
                  <div class="row">
                    <div class="col-md-4 col-sm-6">
                      <div class="form-group">
                        <input class="form-control" type="text" name="mc" th:value="${mc}" placeholder="job title / keywords / company name"/>
                        <i class="ti-time"></i>
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                      <div class="form-group">
                        <input class="form-control" name="lieu" th:value="${lieu}" type="text" placeholder="city"/>
                        <i class="ti-location-pin"></i>
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                      <div class="search-category-container">
                        <label class="styled-select">
                          <select class="dropdown-product selectpicker" name="categorie">
                            <option>All Categories</option>
                            <option value="finance">Finance</option>
                            <option value="informatique">IT et Engineering</option>
                            <option value="Education">Education/Training</option>
                            <option value="Design">Art/Design</option>
                            <option value="Vente">Sale/Markting</option>
                            <option value="Sante">Healthcare</option>
                            <option value="Science">Science</option>                              
                            <option value="Alimentation">Food Services</option>
                          </select>
                        </label>
                      </div>
                    </div>
                    <div class="col-md-1 col-sm-6">
                      <button type="submit" class="btn btn-search-icon"><i class="ti-search"></i></button>
                    </div>
                  </div>
                </form>
              </div>
              <div class="popular-jobs">
                <b>Popular Keywords: </b>
                <a href="#">Web Design</a>
                <a href="#">Manager</a>
                <a href="#">Programming</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end intro section -->
    </div>
    
    <!-- Find Job Section Start -->
    <section class="find-job section">
      <div class="container">
        <h2 class="section-title">Hot Jobs</h2>
        <div class="row">
          
            <div class="job-list"  th:each="p:${offre}">
            <div class="col-md-5">
              <div class="thumb">
                <a href="job-details.jsp"><img src="assets/img/jobs/img-1.jpg" alt=""/></a>
              </div>
              <div  class="job-list-content" >
              <p style="font-size:250%;" th:text="${p.titre}"></p>
                <p th:text="${p.description}"></p>
                <div class="job-tag" >
                  <div class="pull-left">
                    <div class="meta-tag">
                      <span><a href="browse-categories.jsp"><i th:text="${p.categories}" class="ti-brush" ></i></a></span>
                      <span><i th:text="${p.lieu}" class="ti-location-pin"></i></span>
                     <p><span th:text="${p.date_expiration}"><i class="ti-time"></i></span></p>
                      <p><span th:text="${p.poste}"><i class="ti-time"></i></span></p>
                     <p> <span th:text="${p.salaire}"><i class="ti-time"></i></span> DT</p>
                    </div>
                  </div>
                  <div class="pull-right">
                    <div class="icon">
                      <i th:text="${p.id_offre}" class="ti-heart"></i>
                    </div>
                    <a th:href="@{addDemande(id_offre=${p.id_offre})}" style="text-align:right;" class="btn btn-common btn-rm">More Detail</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="showing pull-left">
              <a href="#">Showing <span>6-10</span> Of 24 Jobs</a>
            </div>                    
            <ul class="pagination pull-right">              
              <li class="active"><a th:href="@{index}" class="btn btn-common" ><i class="ti-angle-left"></i> prev</a></li>
              <li th:class="${pagecourante}==${status.index}?'active':''" th:each="pa,status:${pages}" >
              <a th:href="@{index.jsp(page=${status.index},size=${size},mc=${mc})}" th:text="${status.index}"></a></li>
              <li class="active"><a href="#" class="btn btn-common">Next <i class="ti-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- Find Job Section End -->
    <!-- Featured Jobs Section Start -->
   
    <!-- Featured Jobs Section End -->

    
    <!-- End Purchase Section -->
     
    <!-- Blog Section -->
   

   
    <!-- Clients Section -->
    
     <!-- Counter Section Start -->
    
    <!-- Counter Section End -->

    <!-- Infobox Section Start -->
   
    <!-- Infobox Section End -->

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
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lobortis tincidunt est, et euismod purus suscipit quis. Etiam euismod ornare elementum. Sed ex est, consectetur eget facilisis sed.</p>
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
                  <li><a href="#">Senior Accountant</a></li>
                  <li><a href="#">Frontend Developer</a></li>
                  <li><a href="#">Junior Tester</a></li>
                  <li><a href="#">Project Manager</a></li>
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
                  <a class="dribble" href="https://dribbble.com/GrayGrids"><i class="ti-dribbble"></i></a>
                  <a class="linkedin" href="https://www.linkedin.com/GrayGrids"><i class="ti-linkedin"></i></a>
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
              <div class="site-info text-center">
                <p>All Rights reserved copy; 2017 - Designed et Developed by <a rel="nofollow" href="http://graygrids.com">GrayGrids</a></p>
              </div>   
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