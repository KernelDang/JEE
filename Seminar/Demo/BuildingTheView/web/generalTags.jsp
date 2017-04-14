<%-- 
    Document   : dataTags
    Created on : Apr 14, 2017, 11:35:57 PM
    Author     : Kernel Dang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            dt {
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Data Tags Demo</h1>
        <dl>
            <dt>Property tag</dt>
            <dd><s:property value="user.username"/></dd>
            <dt>Set tag</dt>
            <dd>
                <s:set var="username" value="user.username"/>
                <s:property value="#username"/>
            </dd>
            <dt>push tag</dt>
            <dd>
                <s:push value="user">
                    <s:property value="username"/> from top-level of Value Stack
                </s:push>
            </dd>
            <dt>bean tag</dt>
            <dd>
                <s:bean name="demo.User" var="newUser">
                    <s:param name="username">Trịnh Văn B</s:param>
                    <s:param name="password">0000000</s:param>
                </s:bean>
                Created new user: <s:property value="#newUser.username"/>
            </dd>
            <dt>action tag</dt>
            <dd>
                <p>This come from current action</p>
                <s:action name="anotherAction" executeResult="true"/>
            </dd>
            <dt>control tag - iterator</dt>
            <dd>
                <ul>
                    <s:iterator value="users" status="itStatus">
                        <li>
                            <s:property value="#itStatus.count"/>
                            <s:property value="username"/>
                        </li>
                    </s:iterator>
                </ul>                
            </dd>
            <dt>control tag - if/else tag</dt>
            <dd>
                <s:if test="true">
                    <p>This is content of if segment</p>
                </s:if>
            </dd>
            <dt>control tag - if/else tag</dt>
            <dd>
                <s:if test="true">
                    <p>This is content of if segment</p>
                </s:if>
            </dd>
            <dt>url tag</dt>
            <dd>
                <s:url action="myAction" var="url">
                    <s:param name="selectedIndex" value="1"/>
                </s:url>
                <a href="<s:property value="#url"/>">Click me</a>
            </dd>
        </dl>
    </body>
</html>
