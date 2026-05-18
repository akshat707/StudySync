package com.studysync.servlet;

import com.studysync.dao.UserDAO;

import com.studysync.entity.User;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)

            throws ServletException, IOException {

        User user = new User();

        user.setName(request.getParameter("name"));

        user.setEmail(request.getParameter("email"));

        user.setPassword(request.getParameter("password"));

        user.setCourse(request.getParameter("course"));

        user.setSkills(request.getParameter("skills"));

        user.setBio(request.getParameter("bio"));

        user.setAvailability(request.getParameter("availability"));

        UserDAO dao = new UserDAO();

        dao.saveUser(user);

        response.sendRedirect("login.jsp");
    }
}
