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
        String idArray[]=req.getParameterValues("idStudent");

        for(String idString : idArray) {

            service.delete(Integer.parseInt(idString));
        }
        resp.sendRedirect("/students");

    }
}
