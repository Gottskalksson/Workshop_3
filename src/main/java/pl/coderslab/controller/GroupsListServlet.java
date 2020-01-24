package pl.coderslab.controller;

import pl.coderslab.daos.GroupDao;
import pl.coderslab.models.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/groupsList")
public class GroupsListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        Group[] groups = groupDao.findAll();
        request.setAttribute("groups", groups);
        getServletContext().getRequestDispatcher("/WEB-INF/groupsList.jsp").forward(request, response);
    }
}
