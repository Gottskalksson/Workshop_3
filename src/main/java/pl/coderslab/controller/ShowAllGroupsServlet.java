package pl.coderslab.controller;

import pl.coderslab.daos.GroupDao;
import pl.coderslab.models.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/showAllGroups")
public class ShowAllGroupsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Group[] groups = loadAll();
        request.setAttribute("groups", groups);
        request.getRequestDispatcher("/WEB-INF/allGroups.jsp").forward(request, response);
    }

    private Group[] loadAll() {
        GroupDao groupDao = new GroupDao();
        return groupDao.findAll();
    }
}
