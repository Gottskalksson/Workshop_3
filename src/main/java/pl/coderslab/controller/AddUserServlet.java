package pl.coderslab.controller;

import pl.coderslab.daos.UserDao;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/addUser")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String userGroupId = request.getParameter("userGroupId");
        UserDao userDao = new UserDao();
        User user = new User(name, email, pass);
        user.setUserGroupId(Integer.parseInt(userGroupId));
        userDao.create(user);
        response.sendRedirect("/usersList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/addUser.jsp").forward(request, response);
    }
}
