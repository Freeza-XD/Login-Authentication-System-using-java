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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <title>HomePage</title>
    </head>
    <body>
        <div class="card p-4 text center">
            <h2>Welcome</h2>
            <h4><%= user.getUsername() %></h4>
            <p><%= user.getEmail() %></p>
            <a href="LogoutServlet" class="btn btn-danger">Logout</a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>