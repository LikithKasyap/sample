
<%@page import="com.kl.ep.models.Student1" %>

<%
Student1 stud=(Student1) session.getAttribute("stud");
%>

<!DOCTYPE html>
<html>
<head>
<title>Student Profile</title>
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
        background-color:lightblue;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
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
</title>
</head>
<body bgcolor="grey">
<h3 align='center'>Student Profile </h3>
<div class="navbar">
<a href="studhome.jsp">Student Home</a>&nbsp;&nbsp;&nbsp;
<a href="studprofile.jsp">Student Profile</a>&nbsp;&nbsp;&nbsp;
<a href="updatestudprofile.jsp">Update Profile</a>&nbsp;&nbsp;&nbsp;
<a href="studlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
<br/><br/>
</div>
<div class="profile-card">
<center >
<h3><u>Student Profile</u></h3>
ID:<%=stud.getId()%><br/>
Name:<%=stud.getName() %><br/>
Gender:<%=stud.getGender() %><br/>
Department:<%=stud.getDepartment() %><br/>
MailId<%=stud.getMail() %><br/>
Contact:<%=stud.getContact() %><br/>
<div class="profile-card">

</center>
</body>
</html>