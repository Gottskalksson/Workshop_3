package pl.coderslab.controller;

import pl.coderslab.daos.ExerciseDao;
import pl.coderslab.models.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/editExercise")
public class EditExerciseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String id = request.getParameter("id");
        ExerciseDao exerciseDao = new ExerciseDao();
        Exercise exercise = new Exercise(title, description);
        exercise.setId(Integer.parseInt(id));
        exerciseDao.update(exercise);
        response.sendRedirect("/exercisesList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ExerciseDao exerciseDao = new ExerciseDao();
        Exercise exercise = exerciseDao.read(Integer.parseInt(id));
        request.setAttribute("exercise", exercise);
        getServletContext().getRequestDispatcher("/WEB-INF/editExercise.jsp").forward(request, response);
    }
}
