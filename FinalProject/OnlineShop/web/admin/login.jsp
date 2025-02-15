<%-- 
    Document   : login
    Created on : May 24, 2017, 5:54:12 PM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="ThemeBucket">
        <link rel="shortcut icon" href="images/favicon.png">

        <title>Login</title>

        <!--Core CSS -->
        <link href="bs3/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-reset.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />

        <!-- Just for debugging purposes. Don't actually copy this line! -->
        <!--[if lt IE 9]>
        <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>

    <body class="login-body">

        <div class="container">

            <form class="form-signin" action="login" method="post">
                <h2 class="form-signin-heading">OnlineShop</h2>
                <div class="login-wrap">
                    <div class="user-login-info">
                        <s:actionerror/>
                        <input name="account.username" type="text" class="form-control" placeholder="username" autofocus>
                        <s:fielderror fieldName="account.username"/>
                        <input name="account.password" type="password" class="form-control" placeholder="password">
                        <s:fielderror fieldName="account.password"/>
                    </div>
                    <button class="btn btn-lg btn-login btn-block" type="submit">Login</button>
                </div>
            </form>

        </div>



        <!-- Placed js at the end of the document so the pages load faster -->

        <!--Core js-->
        <script src="js/jquery.js"></script>
        <script src="bs3/js/bootstrap.min.js"></script>

    </body>
</html>

