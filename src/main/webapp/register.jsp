<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">

        <title>Register</title>
    </head>

    <body>
        <div class="card p-4">
            <h2>Create Account</h2>
            <form action="RegisterServlet" method="post">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input class="form-control" type="text" name="username" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input class="form-control" type="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input class="form-control" type="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Confirm Password</label>
                    <input class="form-control" type="password" name="confirmPassword" required>
                </div>

                <button class="btn btn-primary" type="submit">Register</button>
            </form>

            <div class="text-center mt-3">
                Already have an account?
                <a href="login.jsp">Login</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>