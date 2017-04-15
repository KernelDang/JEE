<%-- 
    Document   : uiComponentTags
    Created on : Apr 15, 2017, 6:48:36 AM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <s:head/>
    </head>
    <body>
    <s:form action="register">
        <s:textfield key="username" />
        <s:password key="password" />
        <s:textfield key="firstName" />
        <s:textfield key="lastName"/>
        <s:textfield key="portfolioName" />  	
        <s:textfield key="email" />  	
        <s:textfield name="age" label="Age"/>
        <s:checkbox key="receiveJunkMail" fieldValue="true" />
        <s:submit/>
    </s:form>
</body>
</html>
