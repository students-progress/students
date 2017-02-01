package controller;

import entity.Discipline;
import entity.Student;
import service.DisciplineService;
import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 01.02.2017.
 */
@WebServlet("/subject-create")
public class SubjectCreateControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("currentPage2","/pages/subjectCreate.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DisciplineService dis=new DisciplineService();
        Discipline sub=new Discipline();
        sub.setName(req.getParameter("name"));

        dis.addSubject(sub);
        resp.sendRedirect("/disciplines");
    }


}