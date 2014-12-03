<%-- 
    Document   : index
    Created on : Nov 7, 2014, 5:00:58 PM
    Author     : yuminnow
    the style.css is downloaded from Internet:http://designscrazed.org/css-html-login-form-templates/
    <!--
Copyright (c) 2014 by Alireza Attari (http://codepen.io/alireza_attari/pen/xyIqv)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="style.css" type="text/css"></link>
        <link rel="stylesheet" href="style1.css" type="text/css"></link>
        <script type="text/javascript" src="webdesign.js"></script>
        <title>Hello</title>
    </head>
    <body>
    <h1 align="center">Login</h1>
        <form align="center" action="checkname" method="POST"> 
              <div class="wrap">
		<div class="avatar">
                <img src="pictures/profile.JPG" alt="profile">
		</div>
		<input type="text" name="username" value="" placeholder="username"/>
    
		<div class="bar">
			<i></i>
		</div>
		<input type="password" name="password" id="password1" value="" placeholder="password"/>
                <input type="password" id="password2" value="" placeholder="reenter your password" onkeyup="checkPassword(); return false;"/>
                <span id="confirmation"></span>
		<a href="register.jsp" class="forgot_link">register</a>
		<input type="submit" value="GO" />
            </div> 
            <div>         <%
    if(null!=request.getAttribute("error"))
    {
        out.println(request.getAttribute("error"));
    }
    %>  </div>
        </form>
    </body>
</html>
