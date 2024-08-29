<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="cssFiles/JobLoginPage.css">
</head>
<body>
<div class="job-Login">
<form action="JobSeekerDisplay" method="post">

<h1 align="center">Login</h1>
    <div>
        <label for="user-name">User Name</label>
        <input type="text" id="user-name" name="username">
        </div>
        
     <%  String msg=(String)request.getAttribute("message"); %>
        		<% if(msg!=null){%>
        		
        		<p style="color:red;"><%=msg%></p>
   		<%} %>
        		
        		
        		
        <br>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password">
        </div>
        <br>
        <div>
        <a href="htmlFiles/ForgotPassword.html">Forgot Password?</a>
</div>
<br>
<div>

        <input type="submit" value="Login"></div>
        <br>
       <div> If you don't have an account
       <a href="htmlFiles/JobSeekerRegistration.html">
        <input type="button" value="Sign Up"></button>
        </a></div>
       

    </form>
    </div>
</body>
</html>