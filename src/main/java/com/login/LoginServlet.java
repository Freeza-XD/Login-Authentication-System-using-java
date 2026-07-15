package com.login;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String identifier= request.getParameter("identifier");
        String password= request.getParameter("password");

        UserDAO dao = new UserDAO();
        User user = dao.loginUser(identifier, password);
        if(user!=null){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("home.jsp");
        }else{
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
