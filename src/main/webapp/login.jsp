<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html LANG="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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
                    <label class="form-label">Email or Username</label>
                    <input class="form-control" type="text" name="identifier" required>
                </div>
                <label class="form-label">Password</label>
                <div class="input-group mb-3">
                    <input class="form-control" type="password" name="password" id="password" minlength="8" required>
                    <button type="button" class="btn btn-outline-secondary" id="togglePassword">
                        <i class="bi bi-eye"></i>
                    </button>
                </div>
                <button class="btn btn-success" type="submit">Login</button>
            </form>

            <div class="text-center mt-3">
                New user?
                <a href="register.jsp">Register Here</a>
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
        </script>
    </body>
</html>