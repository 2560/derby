<%-- 
    Document   : register
    Created on : Nov 9, 2014, 9:48:14 PM
    Author     : yuminnow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css"></link>
        <link rel="stylesheet" href="style 2.css" type="text/css"></link>
        <title>Register</title>
    </head>
    <body>
        <h1 align="center">Register please</h1>        
        <form align="center" action="checknamer" method="POST"> 
            <div class="wrap">
		<div class="avatar">
                <img src="pictures/profile.JPG" alt="profile">
		</div>
		<input type="text" name="usernamer" value="" />
		<div class="bar">
			<i></i>
		</div>
		<input type="password" name="passwordr" value="" />
		<a href="" class="forgot_link">forgot ?</a>
		<input type="submit" value="GO" />
                                         <%
    if(null!=request.getAttribute("errorname"))
    {
        out.println(request.getAttribute("errorname"));
    }
    %>
            </div>                                                    
        </form>
    </body>
</html>
