package controller;

import service.StudentService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 13.01.2017.
 */
@WebServlet("/students")
public class StudController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service =new StudentService();
        req.setAttribute("students", service.getAllStudents());
        req.setAttribute("currentPage2","/pages/students.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }
}
