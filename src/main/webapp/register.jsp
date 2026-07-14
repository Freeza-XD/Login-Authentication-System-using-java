<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Register</title>
    </head>

    <body>
        <h2> User Registration </h2>
        <form action="RegisterServlet" method="post">
            <label>Username: </label>
            <input type="text" name="username" required>
            <br><br>
            <label>Email: </label>
            <input type="email" name="email" required>
            <br><br>
            <label>Password: </label>
            <input type="password" name="password" required>
            <br><br>
            <label>Confirm Password: </label>
            <input type="password" name="confirmPassword" required>
            <br><br>
            <input type="submit" value="Register">
        </form>
        <br>
        <a href="login.jsp">Already have an account? Login here</a>
    </body>
</html>