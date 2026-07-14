<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html LANG="en">
    <head>
        <title>Login</title>
    </head>

    <body>
        <h2> User Login </h2>
        <form action="LoginServlet" method="post">
            <label>Email: </label>
            <input type="email" name="email" required>
            <br><br>
            <label>Password: </label>
            <input type="password" name="password" required>
            <br><br>
            <input type="submit" value="Login">
        </form>
        <br>
        <a href="register.jsp">New Account? Register</a>
    </body>
</html>