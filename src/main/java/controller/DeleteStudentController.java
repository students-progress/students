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
 * Created by Asus on 03.02.2017.
 */
@WebServlet("/student-delete")
public class DeleteStudentController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service=new StudentService();
        String ids=req.getParameter("ids");
        System.out.println(ids);
        for(String s:ids.split(",")) {
            System.out.println(s);
            service.delete(Integer.parseInt(s));
        }
        resp.sendRedirect("/students");

    }
}
