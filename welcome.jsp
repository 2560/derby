<%-- 
    Document   : welcome
    Created on : Nov 9, 2014, 9:38:24 PM
    Author     : yuminnow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style1.css" type="text/css"></link>
        <link rel="stylesheet" href="style.css" type="text/css"></link>
        <title>Welcome</title>
    </head>
    <body align="center">
        <h1>Hello World!</h1>
        <p>welcome, <%= request.getAttribute("id")%></p>
        
        
    </body>
</html>
