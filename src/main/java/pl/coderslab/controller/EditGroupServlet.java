package pl.coderslab.controller;

import pl.coderslab.daos.GroupDao;
import pl.coderslab.models.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/editGroup")
public class EditGroupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String id = request.getParameter("id");
        GroupDao groupDao = new GroupDao();
        Group group = new Group(name);
        group.setId(Integer.parseInt(id));
        groupDao.update(group);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        GroupDao groupDao = new GroupDao();
        Group group = groupDao.read(Integer.parseInt(id));
        request.setAttribute("group", group);
        getServletContext().getRequestDispatcher("/WEB-INF/editGroup.jsp").forward(request, response);
    }
}
