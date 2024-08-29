<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: auto;
        }
        h2 {
            text-align: center;
        }
        .job-posting {
            border-bottom: 1px solid #ccc;
            padding: 15px 0;
        }
        .job-posting:last-child {
            border-bottom: none;
        }
        .job-title {
            font-weight: bold;
        }
        .delete-button {
            background-color: #d9534f;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .delete-button:hover {
            background-color: #c9302c;
        }
   
    .message {
        padding: 10px;
        background-color: #dff0d8;
        color: #3c763d;
        border: 1px solid #d6e9c6;
        border-radius: 4px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<%
        
         String message = (String) session.getAttribute("message");

            if (message != null) {
        %>
            <div class="message"><%= message %></div>
        <%
                session.removeAttribute("message");
            }
        %>
        
        <div class="container">
        <h2>My Job Postings</h2>
        
         <%
        
            String jdbcURL = "jdbc:mysql://localhost:3306/jobportal";
            String dbUser = "root";
            String dbPassword = "1234";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                String sql = "SELECT jobId, CompanyName, jobRole, jobDescription, eligibilityCriteria, salary FROM recuirterposting";
                statement = connection.createStatement();
                resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {
                	  String jobId = resultSet.getString("jobId");
                    String companyName = resultSet.getString("CompanyName");
                    String jobRole = resultSet.getString("jobRole");
                    String description = resultSet.getString("jobDescription");
                    String eligibility = resultSet.getString("eligibilityCriteria");
                    String salary = resultSet.getString("salary");
        %>
                    <div class="job-posting">
                       
                        <div>Job Id:<%=jobId %></div><br>
                        <div>Company Name: <%= companyName %></div><br>
                        <div>Job Role: <%= jobRole %></div><br>
                        <div>Job Description: <%= description %></div><br>
                        <div>Eligibility Criteria: <%= eligibility %></div><br>
                        <div>Salary: $<%= salary %></div>
                        <form action="RecuirterDeletePostings" method="post" style="margin-top: 10px;">
                            <input type="hidden" name="jobId" value="<%= jobId %>">
                            <input type="submit" class="delete-button" value="Delete">
                        </form>
                    </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </div>
        
        
        

</body>
</html>