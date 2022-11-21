
<!DOCTYPE html>
<html  lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th = "http://www.thymeleaf.org">

<head>
<style>
.fancy {
  padding : 1em;
  width: 100%;
  height: 100%;
  box-sizing: border-box;

  /* At the bottom of our background stack,
     let's have a misty grey solid color */
  background-color: #E4E4D9;

  /* We stack linear gradients on top of each
     other to create our color strip effect.
     As you will notice, color gradients are
     considered to be images and can be
     manipulated as such */
  background-image: linear-gradient(175deg, rgba(0,0,0,0) 95%, #8da389 95%),
                    linear-gradient( 85deg, rgba(0,0,0,0) 95%, #8da389 95%),
                    linear-gradient(175deg, rgba(0,0,0,0) 90%, #b4b07f 90%),
                    linear-gradient( 85deg, rgba(0,0,0,0) 92%, #b4b07f 92%),
                    linear-gradient(175deg, rgba(0,0,0,0) 85%, #c5a68e 85%),
                    linear-gradient( 85deg, rgba(0,0,0,0) 89%, #c5a68e 89%),
                    linear-gradient(175deg, rgba(0,0,0,0) 80%, #ba9499 80%);
                    }
</style>
    <!-- Required meta tags-->
    <meta charset="ISO-8859-1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="au theme template"/>
    <meta name="author" content="Hau Nguyen"/>
    <meta name="keywords" content="au theme template"/>

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="admincss/css/font-face.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>

    <!-- Bootstrap CSS-->
    <link href="admincss/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all"/>

    <!-- Vendor CSS-->
    <link href="admincss/vendor/animsition/animsition.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/wow/animate.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/slick/slick.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="admincss/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="admincss/css/theme.css" rel="stylesheet" media="all"/>
	<!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="cssfolder/bower_components/bootstrap/dist/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="cssfolder/bower_components/font-awesome/css/font-awesome.min.css"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="cssfolder/bower_components/Ionicons/css/ionicons.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="cssfolder/dist/css/AdminLTE.min.css"/>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="cssfolder/dist/css/skins/_all-skins.min.css"/>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"/>

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
           
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    Dashboard Admin
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                       <li>
                            <a th:href="@{accueiladmin}" >
                                <i class="fas fa-users"></i>Controles compte</a>
                        </li>
					 
                       <li>
                            <a th:href="@{controleoffres}" >
                                <i class="far fa-calendar"></i>Controles offres</a>
                        </li>
                       <li>
                            <a th:href="@{controledemande}" >
                                <i class="far fa-check-square" ></i>Demandes emplois</a>
                        </li>
                        <li> <a th:href="@{logoutadmin}" >
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                        </li>
                       
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
 		<div class="page-container">
            <!-- HEADER DESKTOP-->
          

            <!-- MAIN CONTENT-->
            <div class="main-content">
         

    <!-- Main content -->
    			<section class="content">

      			<div class="row">    
                       	 <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Controle Candidat</a></li>
              <li><a href="#timeline" data-toggle="tab">Controle Recriteur</a></li>
              
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">
              <div class="row">
              
							 <div class="col-md-5" th:each="p:${lc2}" >
              <div class="fancy" >
              
                            
                            <!-- TOP CAMPAIGN-->
                            <div class="top-campaign">
                                <h3 class="title-3 m-b-30" th:text="${p.email}"></h3>
                                <div class="table-responsive">
                                    <table class="table table-top-campaign">
                                        <tbody>
                                            <tr>
                                                <td>Username</td>
                                                <td><p th:text="${p.nom}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Num telephone</td>
                                                <td><p th:text="${p.tel}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Sexe</td>
                                                <td><span th:if="${p.sexe == 'f'}">Femme</span><span th:if="${p.sexe == 'h'}">Homme</span></td>
                                            </tr>
                                            <tr>
                                                <td>Date naissence</td>
                                                <td><p th:text="${p.date_nais}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Adresse</td>
                                                <td><p th:text="${p.adresse}"></p></td>
                                            </tr>
											<tr>
                                                <td colspan="2"><a th:href="@{controlecompte(id=${p.id})}"><button class="au-btn au-btn-load js-load-btn">Profile</button></a></td>
											</tr>
											<tr>
                                                <td colspan="2" th:if="${p.type == 'R'}">
                                                <a th:href="@{deleteRecriteur(idc=${p.id})}">
                                                <button  class="btn btn-danger">Supprimer</button></a></td>
                                            	 <td colspan="2" th:if="${p.type == 'c'}">
                                            	 <a th:href="@{deleteCondidat(idc=${p.id})}">
                                            	 <button  class="btn btn-danger">Supprimer</button></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
								</div>
                            </div>
                            <!-- END TOP CAMPAIGN-->
                        </div>
                       
                    </div>
              </div>
               
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="timeline">
               <div class="row">
               <div class="col-md-5" th:each="p:${lc1}" >
              <div class="fancy" >
              
                            
							 
                            <!-- TOP CAMPAIGN-->
                            <div class="top-campaign">
                                <h3 class="title-3 m-b-30" th:text="${p.email}"></h3>
                                <div class="table-responsive">
                                    <table class="table table-top-campaign">
                                        <tbody>
                                            <tr>
                                                <td>Username</td>
                                                <td><p th:text="${p.nom}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Num telephone</td>
                                                <td><p th:text="${p.tel}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Sexe</td>
                                                <td><span th:if="${p.sexe == 'f'}">Femme</span><span th:if="${p.sexe == 'h'}">Homme</span></td>
                                            </tr>
                                            <tr>
                                                <td>Date naissence</td>
                                                <td><p th:text="${p.date_nais}"></p></td>
                                            </tr>
                                            <tr>
                                                <td>Adresse</td>
                                                <td><p th:text="${p.adresse}"></p></td>
                                            </tr>
											<tr>
                                                <td colspan="2"><a th:href="@{controlecompte(id=${p.id})}"><button class="au-btn au-btn-load js-load-btn">Profile</button></a></td>
											</tr>
											<tr>
                                                <td colspan="2" th:if="${p.type == 'R'}">
                                                <a th:href="@{deleteRecriteur(idc=${p.id})}">
                                                <button  class="btn btn-danger">Supprimer</button></a></td>
                                            	 <td colspan="2" th:if="${p.type == 'c'}">
                                            	 <a th:href="@{deleteCondidat(idc=${p.id})}">
                                            	 <button  class="btn btn-danger">Supprimer</button></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
								</div>
                            </div>
                            <!-- END TOP CAMPAIGN-->
                        </div>
                       
                    </div>
              </div>
              </div>
              <!-- /.tab-pane -->

			  
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div> 
                </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
           
            <!-- END PAGE CONTAINER-->
        </div>

    </div>
    <!-- Jquery JS-->
    <script src="admincss/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="admincss/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="admincss/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="admincss/vendor/slick/slick.min.js">
    </script>
    <script src="admincss/vendor/wow/wow.min.js"></script>
    <script src="admincss/vendor/animsition/animsition.min.js"></script>
    <script src="admincss/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="admincss/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="admincss/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="admincss/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="admincss/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="admincss/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="admincss/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="admincss/js/main.js"></script>
    <!-- jQuery 3 -->
<script src="cssfolder/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="cssfolder/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="cssfolder/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="cssfolder/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="cssfolder/dist/js/demo.js"></script>

</body>

</html>
<!-- end document-->
