package controller;
import entity.Discipline;
import service.DisciplineService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 05.02.2017.
 */
@WebServlet("/subject-modify")
public class SubjectModifyController  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DisciplineService service=new DisciplineService();
        Discipline discipline = service.getById(Integer.parseInt(req.getParameter("idSubject")));
        req.setAttribute("discipline", discipline);
        req.setAttribute("currentPage2","/pages/subjectCreate.jsp");
        req.getRequestDispatcher("/template2.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       DisciplineService service=new DisciplineService();
        Discipline discipline=new Discipline();
        discipline.setId(Integer.parseInt(req.getParameter("id")));

        discipline.setName(req.getParameter("name"));
        service.modify(discipline);
        resp.sendRedirect("/disciplines");
    }
}
