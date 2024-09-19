<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.kl.ep.models.Student1" %>
<%@page import="com.kl.ep.services.Student1Service" %>
<%
Student1 stud=(Student1)session.getAttribute("stud");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<style>
        body {
        background: url('images/uni.jpeg');
            background-size: cover;
        
        background-color: lightblue; /* light beige */
            font-family: Arial, sans-serif;
            margin: 0;
        }
        h3 {
            text-align: center;
            color: white;
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
        .profile-card {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color:grey;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        color: white;
    }
    .profile-card h3 {
        color:"black"
        margin-bottom: 20px;
    }
    .profile-card p {
        font-size: 18px;
        margin: 10px 0;
    }
    </style>
</head>
<body >
<h3 align='center'>Update Profile</h3>
<div class="navbar">
<a href="studhome.jsp">Student Home</a>&nbsp;&nbsp;&nbsp;
<a href="studprofile.jsp">Student Profile</a>&nbsp;&nbsp;&nbsp;
<a href="updatestudprofile.jsp">Update Profile</a>&nbsp;&nbsp;&nbsp;
<a href="studlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
<br/><br/>
</div>
<h3 align="center"><u>Update Student Profile</u></h3>
<div class="profile-card">
<center>
<form method="post"  action="studprofileupdate.jsp">
<table align="center">
<tr>
    <td><b>ID</b></td>
    <td>
        <input type="number" name="id"  value="<%=stud.getId()%>"  required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Enter Name</b></td>
    <td>
        <input type="text" name="name" value="<%=stud.getName()%>" required>
    </td>
</tr>
<tr><td></td></tr>

<tr>
    <td><b>Enter Password</b></td>
    <td>
        <input type="password" name="password" value="<%=stud.getPassword()%>" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Enter Contact</b></td>
    <td>
        <input type="number" name="contact" value="<%=stud.getContact()%>" required>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr align="center">
    <td>
        <input type="submit" value="Update" required>
    </td>
    <td>
        <input type="reset" value="Clear" required>
    </td>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>