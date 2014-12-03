<%-- 
    Document   : personalinfo
    Created on : Nov 29, 2014, 6:32:56 PM
    Author     : yuminnow
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style1.css" type="text/css"></link>
        <link rel="stylesheet" href="style.css" type="text/css"></link>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
          Connection conn=null;
          Statement st;
          ResultSet rs=null;
          Integer c;
    
         
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        String connectionURL = "jdbc:derby://localhost:1527/IS2560";
        conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
            
        // here we attach the connection to a session variable
        
        st = conn.createStatement();
        %>
        <p>welcome, <%= request.getAttribute("id")%></p>
        <%
        c = (Integer)request.getAttribute("id");        
        
        String q1 = new String("select u.username from IS2560.PEOPLE_HELPER AS P, IS2560.USERS AS U where P.HELPER_ID = U.USER_ID and P.user_id ="+ c);
        rs =  st.executeQuery(q1);
        while(rs.next())
            {
            %>
            <p> <%=rs.getString("username")%><a href="delete_friend">delete</a> </p>
            <%
           }
        //rs.close();
        //st.close();
        //Statement st = conn.createStatement();
        
        String q2 = new String("select u.username,u.user_id from friend as f,users as u where user_2="+c+"and f.user_1=u.user_id");
        rs = st.executeQuery(q2);
        
        while(rs.next()){
            %>
            <form align="center" action="friend" method="POST">               
                <input type="text" name="name" value=<%= rs.getString("username")%> />
                <input type="text" name="id" value=<%= rs.getInt("user_id")%> />                
                confirm: <input type="radio" name="decision" value="1" />
                deny: <input type="radio" name="decision" value="2" />
                <input type="submit" value="SUBMIT" name="SUBMIT" />               
            </form>
            <%
        }
        //request.setAttribute("id", c);
        /* since we are going to reuse the connection we don't close it
        conn.close();*/
        //int u = (Integer)request.getAttribute("u");
        //if(u==0)
        //    out.println("friend request denied");
        //else if (u==1){
        //    out.println("friend request accepted");
        //}else 
        //    out.println("error");
        
        %>
        <a href="add_friend.jsp">add</a>
        <a href="messagesend.jsp">edit</a>
    </body>
</html>
