package controller;

import entity.Student;
import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 23.01.2017.
 */
@WebServlet ("/student-create")
public class StudenCreateControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("currentPage2","/pages/createstudent.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService ob=new StudentService();
        Student student=new Student();
        student.setSurname(req.getParameter("surname"));
        student.setName(req.getParameter("name"));
        student.setGroup(req.getParameter("group"));
        ob.addStudent(student);
        resp.sendRedirect("/students");
    }
}
