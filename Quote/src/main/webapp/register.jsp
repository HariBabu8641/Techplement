<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="login.css"/>
</head>
<body>
    <div class="container">
   
        <h1>Register</h1>
        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="email">Email:</label>
            <input type="text" id="username" name="email" required><br>   
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Register</button>
        </form>
    
        <p><a href="Index.html">Back to Home</a></p>
    
         <%-- Display error message if registration fails --%>
        <% String error1 = request.getParameter("error1");
           if (error1 != null && error1.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
          
      </div>
      
</body>
 
</html>