<!DOCTYPE html>
<html  lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th = "http://www.thymeleaf.org">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="au theme template"/>
    <meta name="author" content="Hau Nguyen"/>
    <meta name="keywords" content="au theme template"/>

    <!-- Title Page-->
    <title>Login Admin</title>

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

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                           CoolAdmin
                        </div>
                        <div class="login-form">
                            <form th:action="@{/loginadmin}" method='POST'>
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input class="au-input au-input--full" type="text" name="email" placeholder="Email"/>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password"/>
                                </div>
                                
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">sign in</button>
                                
                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
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

</body>

</html>
<!-- end document-->