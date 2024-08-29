<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="cssFiles/RecuirterLogin.css">
</head>
<body>



 <div class="job-Login">		
   <form action="RecuirterDisplay" method="post">
    <h1>Recruiter Login</h1>
    <div>
        <label for="username">User Name</label>
        <input type="text" id="username" name="username">
        </div>
        <%String msg= (String)request.getAttribute("message"); %>
<%if(msg!=null){%>
<p style="color:red;"><%=msg%></p>
<% }%>
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
       
         <input type="button" value="Sign Up" onclick="location.href='htmlFiles/RecuriterRegistration.html'">
        </a></div>
    

    </form>



</body>
</html>