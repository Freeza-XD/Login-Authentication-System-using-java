<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.login.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html LANG="en">
    <head>
        <title>HomePage</title>
    </head>
    <body>
        <h2>Welcomde, <%= user.getUsername() %> </h2>
        <p> Email: <%= user.getEmail() %> </p>
        <br>
        <a href="LogoutServlet">Logout</a>
    </body>
</html>