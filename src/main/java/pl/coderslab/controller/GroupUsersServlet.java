package pl.coderslab.controller;

import pl.coderslab.daos.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/group")
public class GroupUsersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User[] users = userDao.findAllByUserGroupId(Integer.parseInt(id));
        request.setAttribute("users", users);
        request.getRequestDispatcher("/WEB-INF/usersInGroup.jsp").forward(request, response);
    }
}
