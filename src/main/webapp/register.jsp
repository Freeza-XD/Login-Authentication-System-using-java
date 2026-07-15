<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <title>Register</title>
    </head>

    <body>
        <div class="card p-4">
            <h2>Create Account</h2>
            <% String error= request.getParameter("error");
            if("passwordLength".equals(error)){
                %>
                <div class="alert alert-danger">
                    Password must be atleast 8 characeters long.
                </div>
            <% }else if("passwordMismatch".equals(error)){ %>
                <div class="alert alert-danger">
                    Password and Confirm Password do not match.
                </div>
            <%}%>
            <form action="RegisterServlet" method="post">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input class="form-control" type="text" name="username" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input class="form-control" type="email" name="email" required>
                </div>
                <label class="form-label">Password</label>
                <div class="input-group mb-3">
                    <input class="form-control" type="password" name="password" id="password" minlength="8" required>
                    <button type="button" class="btn btn-outline-secondary" id="togglePassword">
                        <i class="bi bi-eye"></i>
                    </button>
                </div>
                <label class="form-label">Confirm Password</label>
                <div class="mb-3">
                    <input class="form-control" type="password" name="confirmPassword" id="confirmPassword" minlength="8" required>
                    <button type="button" class="btn btn-outline-secondary" id="toggleconfirmPassword">
                        <i class="bi bi-eye"></i>
                    </button>
                </div>

                <button class="btn btn-primary" type="submit">Register</button>
            </form>

            <div class="text-center mt-3">
                Already have an account?
                <a href="login.jsp">Login</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            function toggleVisibility(inputId, iconId){
                const input = document.getElementById(inputId);
                const icon = document.querySelector("#" + iconId + "i");
                if(input.type === "password"){
                    input.type = "text";
                    icon.classList.remove("bi-eye");
                    icon.classList.add("bi-eye-slash");
                }else{
                    input.type="password";
                    icon.classList.remove("bi-eye-slash");
                    icon.classList.add("bi-eye");
                }
            }
            document.getElementById("togglePassword").addEventListener("click", function(){
                toggleVisibility("password", "togglePassword");
            });
            document.getElementById("toggleconfirmPassword").addEventListener("click", function(){
                toggleVisibility("confirmPassword", "toggleconfirmPassword");
            });
        </script>
    </body>
</html>