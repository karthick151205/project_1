<%-- 
    Document   : userdb
    Created on : Jan 31, 2025, 12:41:46 PM
    Author     : RADLAB188
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.*"%>
<html>
<body>
<%
    String fullname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String password = request.getParameter("cpassword");
    String gender = request.getParameter("gender");
    /*out.println(fullname + "");
    out.println(lname + "");
    out.println(email +"");
    out.println(password + "");
    out.println(gender +" ");*/
    Connection con=null;
    Statement stat=null;
  try
  {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "sa");
      stat=con.createStatement();
      String query="insert into users values ('"+fullname+"','"+lname+"','"+email+"','"+password+"','"+gender+"')";
      stat.executeUpdate(query);
      out.println("Added Successfully into the Database");
  }
  catch(Exception e) 
  {
      out.println(e);   
  }
%>
  
