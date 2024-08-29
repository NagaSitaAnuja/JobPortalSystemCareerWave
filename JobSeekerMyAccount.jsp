<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin: 10px 0;
        }

        p strong {
            color: #333;
        }

        .no-details {
            text-align: center;
            color: #999;
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">

<h1>My Profile</h1>
<% ResultSet candidateDetails=(ResultSet) request.getAttribute("candidateDetails");

if(candidateDetails!=null){
	%>
	
	<p><strong>First Name: </strong><%=candidateDetails.getString("firstName") %></p>
	<p><strong>Last Name: </strong><%=candidateDetails.getString("lastName") %></p>
	<p><strong>Email: </strong><%=candidateDetails.getString("email") %></p>		
	<p><strong>Contact Number: </strong><%=candidateDetails.getString("contactNumber") %></p>
	<p><strong>Gender : </strong><%=candidateDetails.getString("gender") %></p>
	<p><strong>User Id: </strong><%=candidateDetails.getString("userId") %></p>
	<p><strong>Age: </strong><%=candidateDetails.getString("age") %></p>
	
	<p><strong>Qualification: </strong><%=candidateDetails.getString("Qualification") %></p>
	<p><strong>Age: </strong><%=candidateDetails.getString("age") %></p>
 <%}else {%>
	<p class="no-details">NO account Details found</p>
	<%} %>
</div>
</body>
</html>