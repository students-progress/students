package controller;


import service.DisciplineService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 01.02.2017.
 */
@WebServlet("/disciplines")
public class DisciplineControl extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      DisciplineService discipline =new DisciplineService();
        req.setAttribute("disciplines", discipline.getDiscipline());
        req.setAttribute("currentPage2","/pages/disciplines.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }

}
