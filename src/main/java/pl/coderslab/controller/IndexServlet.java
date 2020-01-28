package pl.coderslab.controller;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.models.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/")
public class IndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        String numberSolutionsStr = getServletContext().getInitParameter("number-solutions");
        Solution[] solutions = solutionDao.findRecent(Integer.parseInt(numberSolutionsStr));
        request.setAttribute("solutions", solutions);
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
