<!DOCTYPE html>
<html  lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th = "http://www.thymeleaf.org">

<head>
<style>
.fancy {
  padding : 1em;
  width: 100%;
  height: 200px;
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
    <meta charset="UTF-8"/>
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

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
          

            <!-- MAIN CONTENT-->
            <div class="main-content">
         

    <!-- Main content -->
    <section class="content">

      <div class="row">
         <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <h3 class="profile-username text-center" th:text="${compte.nom}"></h3>

              <p class="text-muted text-center" th:text="${compte.email}"></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item" >
                  Num telephone : <span th:text="${compte.tel}"></span>
                </li>
                <li class="list-group-item">
                 Sexe : <span th:if="${compte.sexe == 'f'}">Femme</span><span th:if="${compte.sexe == 'h'}">Homme</span>
                </li>
                <li class="list-group-item">
                 Date naissence :  <span th:text="${compte.date_nais}"></span>
                </li>
                <li class="list-group-item">
                  Adresse : <span th:text="${compte.adresse}"></span>
                </li>
              </ul>

              <a th:href="@{deleteRecriteur(idc=${compte.id})}" class="btn btn-primary btn-block"><b>Delete</b></a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Activity</a></li>
             
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">
               <div class="fancy" th:each="comp:${offre}">
              <table width="100%" >
               		<tr>
               			<td>Titre : <span th:text="${comp.titre}"></span></td>
               			<td>Date expiration : <span th:text="${comp.date_expiration}"></span></td>
               		</tr>
               		<tr>
               			<td>Cathegorie : <span  th:text="${comp.categories}"></span></td>
               			<td>Salaire : <span  th:text="${comp.salaire}"></span></td>
               			
               		</tr>
               		<tr>
               			<td>Poste : <span  th:text="${comp.poste}"></span></td>
               			<td>Lieux : <span  th:text="${comp.lieu}"></span></td>
               			
               		</tr>
               		<tr>
               			<td colspan="2">Description: <span th:text="${comp.description}"></span></td>
               		
               		</tr>
               		<tr>
               			
               			<td colspan="2"><a th:href="@{deleteoffre(id=${comp.id_offre},idc=${compte.id} )}"><button class="btn btn-primary btn-block">Delete</button></a></td>
               		</tr>
               </table>
              </div>
                <!-- /.post -->
              </div>
              
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
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
