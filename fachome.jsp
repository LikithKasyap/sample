<%@page import="com.kl.ep.models.Faculty" %>
<%
Faculty fac=(Faculty)session.getAttribute("fac");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Home</title>
<style>
        body {
        background: url('images/bgm.jpeg');
            background-size: cover;
        
        background-color: lightblue; /* light beige */
            font-family: Arial, sans-serif;
            margin: 0;
        }
        h3 {
            text-align: center;
            color: darkblue;
        }
        .navbar {
    text-align: center;
    margin-bottom: 20px;
    background-color: rgba(128, 128, 128, 0.2); 
    padding: 15px;
    border-radius: 8px;
    backdrop-filter: blur(10px); 
    -webkit-backdrop-filter: blur(10px); 
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
}
.navbar a {
    margin: 0 15px;
    text-decoration: none;
    color: white;
    font-size: 16px;
    font-weight: bold;
    transition: color 0.3s ease;
}
.navbar a:hover {
    color: #255784;
    background: #2196f3;
    box-shadow: 0 0 10px #2196f3, 0 0 40px #2196f3, 0 0 80px #2196f3;
    transition-delay: 1s;
}


        .content {
            text-align: center;
            margin: 20px;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .content p {
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body bgcolor="lightgrey">
<div class="navbar">
<h3 align='center'>Faculty Home</h3>
<a href="fachome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="facprofile.jsp">View Profile</a>
<a href="viewallstuds.jsf">View Students</a>&nbsp;&nbsp;&nbsp;
<a href="studlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
</div>
</body>
</html>