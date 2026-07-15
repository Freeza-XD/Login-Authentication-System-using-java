package com.login;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String username= request.getParameter("username");
        String email= request.getParameter("email");
        String password= request.getParameter("password");
        String confirmPassword= request.getParameter("confirmPassword");

        if(!password.equals(confirmPassword)) 
            response.getWriter().println("Passwords do not match.");

        User user = new User(username, email, password);
        UserDAO dao = new UserDAO();
        if(dao.registerUser(user)) response.sendRedirect("login.jsp?success=registered");
        else response.getWriter().println("register.jsp?error=failed");
    }
}
