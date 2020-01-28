package pl.coderslab.controller;

import pl.coderslab.daos.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/usersList")
public class UsersListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User[] users = userDao.findAll();
        request.setAttribute("users", users);
        getServletContext().getRequestDispatcher("/WEB-INF/usersList.jsp").forward(request, response);
    }
}
