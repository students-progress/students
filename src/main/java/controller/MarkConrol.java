package controller;

/**
 * Created by Asus on 02.02.2017.
 */

import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/mark")

public class MarkConrol extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service =new StudentService();
        req.setAttribute("students", service.getAllStudents());
        req.setAttribute("currentPage2","/pages/mark.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }
}
