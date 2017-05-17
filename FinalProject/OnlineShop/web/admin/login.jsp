<%-- 
    Document   : login
    Created on : May 17, 2017, 4:03:12 PM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OnlineShop</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!--         jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!--         Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="container">
        <header class="jumbotron">
            <h1>OnlineShop - Administration</h1>
        </header>
        <div class="col-md-4 col-md-offset-4">
            <s:form theme="bootstrap">
                <s:textfield label="Tài khoản"></s:textfield>
                <s:password label="Mật khẩu"></s:password>
                <s:submit cssClass="btn btn-primary" value="Đăng nhập"></s:submit>
            </s:form>
        </div>
    </body>
</html>
