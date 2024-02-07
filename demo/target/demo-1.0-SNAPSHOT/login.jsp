<%--
  Created by IntelliJ IDEA.
  User: Eng.Blaise
  Date: 07/02/2024
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Login</h2>
<% if (request.getParameter("error") != null) { %>
<p style="color: red;">Invalid username or password.</p>
<% } %>
<form action="izabayo" method="post"> <!-- Changed action to match the servlet mapping -->
    Username: <input type="text" name="username"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
