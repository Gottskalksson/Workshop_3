package pl.coderslab.controller;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.daos.UserDao;
import pl.coderslab.models.Solution;
import pl.coderslab.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/user")
public class UserDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = loadById(Integer.parseInt(id));
        SolutionDao solutionDao = new SolutionDao();
        Solution[] userSolutions = solutionDao.findAllByUserId(Integer.parseInt(id));
        request.setAttribute("user", user);
        request.setAttribute("solutions", userSolutions);
        getServletContext().getRequestDispatcher("/WEB-INF/userDetail.jsp").forward(request, response);
    }

    private User loadById (int id) {
        UserDao userDao = new UserDao();
        return userDao.read(id);
    }
}
