<%-- 
    Document   : login
    Created on : May 18, 2017, 12:49:00 AM
    Author     : namlxuit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <s:form action="/login">
                <s:textfield name="account.username" label="Username"></s:textfield>
                <s:password name="account.password" label="Password"></s:password>
                <s:submit value="Dang nhap"></s:submit>
            </s:form>
        </div>
    </body>
</html>
