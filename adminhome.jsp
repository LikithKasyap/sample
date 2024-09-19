<%@page import="com.kl.ep.models.Admin" %>
<%@page import="com.kl.ep.models.Event" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.List"%>
<%@page import="javax.ejb.EJB"%>
<%
Admin admin = (Admin) session.getAttribute("admin");
Event event=(Event) session.getAttribute("event");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
        body {
        background: url('images/build.jpeg');
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
<body bgcolor="lightgrey">
<h3 align='center'>Admin Page</h3>
<div class="navbar">
<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewallstuds.jsf">View All Students</a>&nbsp;&nbsp;&nbsp;
<a href="viewallfac.jsf">View All Faculty</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogin.jsf">Logout</a>&nbsp;&nbsp;&nbsp;
<a href="addevents.jsf">Add Events</a>&nbsp;&nbsp;&nbsp;
<a href="viewevents.jsf">view Events</a>&nbsp;&nbsp;&nbsp;
</div>

<br/><br/>
Welcome <%=admin.getUsername()%>
</body>
</html>