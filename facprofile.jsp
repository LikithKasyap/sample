<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.kl.ep.models.Faculty" %>
<%
Faculty fac=(Faculty) session.getAttribute("fac");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Profile</title>
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
<body bgcolor="grey">
<h3 align='center'>Faculty Profile </h3>
<div class="navbar">
<a href="fachome.jsp">Faculty Home</a>&nbsp;&nbsp;&nbsp;
<a href="facprofile.jsp">Faculty Profile</a>&nbsp;&nbsp;&nbsp;
<a href="updatefprofile.jsp">Update Profile</a>&nbsp;&nbsp;&nbsp;
<a href="faclogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
<br/><br/>
</div>
<center>
<h3><u>Faculty Profile</u></h3>
ID:<%=fac.getId() %><br/>
Name:<%=fac.getName() %><br/>
Gender:<%=fac.getGender() %><br/>
Department:<%=fac.getDepartment() %><br/>
MailId<%=fac.getEmail() %><br/>
Salary<%=fac.getSalary() %><br/>
Contact:<%=fac.getContact() %><br/>
</center>
</body>
</html>