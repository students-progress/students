package controller;

import service.DisciplineService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on
 * 12.02.2017.
 */
@WebServlet("/subject-delete")
public class DeleteSubject extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DisciplineService service=new DisciplineService();
        String idArray[]=req.getParameterValues("idSubject");

        for(String idString : idArray) {

            service.delete(Integer.parseInt(idString));
        }
        resp.sendRedirect("/disciplines");

    }
}
