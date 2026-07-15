<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html LANG="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <title>Login</title>
    </head>

    <body>
        <div class="card p-4">
            <h2>Login</h2>
            <%
                String error= request.getParameter("error");
                if("invalid".equals(error)){
                    %>
                    <div class="alert alert-danger">
                        Invalid email or password.
                    </div>
                    <%
                }
            %>
            <%
                String success= request.getParameter("success");
                if("registered".equals(success)){
                    %>
                    <div class="alert alert-danger">
                        Registration successful. Please log in.
                    </div>
                    <%
                }
            %>
            <form action="LoginServlet" method="post">
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input class="form-control" type="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input class="form-control" type="password" name="password" required>
                </div>
                <button class="btn btn-success" type="submit">Login</button>
            </form>

            <div class="text-center mt-3">
                New user?
                <a href="register.jsp">Register Here</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>