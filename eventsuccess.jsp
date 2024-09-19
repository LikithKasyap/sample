<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.kl.ep.models.Student1" %>
<%
Student1 stud=(Student1)session.getAttribute("stud");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
<style>
        body {
        background: url('images/unievent.jpeg');
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
    background-color: rgba(128, 128, 128, 0.2); /* grey with some transparency */
    padding: 15px;
    border-radius: 8px;
    backdrop-filter: blur(10px); /* apply a blur effect */
    -webkit-backdrop-filter: blur(10px); /* for Safari */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* optional: adds a subtle shadow */
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
<body>
<div class="navbar">
<form>
<h3 align='center'>Registration success</h3>
<a href="studhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewevents.jsf">Events</a>&nbsp;&nbsp;&nbsp;
<a href="displaystuds.jsp">Student List</a>&nbsp;&nbsp;&nbsp;
<a href="registerevents.jsf">Register Events</a>&nbsp;&nbsp;&nbsp;
<a href="studprofile.jsp">Student Profile</a>&nbsp;&nbsp;&nbsp;

<a href="studlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
</form>
</div>
<h1 align="center">Registered Successfullyy!</h3>
</body>
</html>