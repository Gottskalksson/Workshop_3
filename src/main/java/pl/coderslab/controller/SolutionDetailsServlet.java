package pl.coderslab.controller;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.models.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/solution")
public class SolutionDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Solution solution = loadById(Integer.parseInt(id));
        request.setAttribute("solution", solution);
        getServletContext().getRequestDispatcher("/WEB-INF/solutionDetail.jsp").forward(request, response);
    }

    private Solution loadById(int id) {
        SolutionDao solutionDao = new SolutionDao();
        return solutionDao.read(id);
    }
}
