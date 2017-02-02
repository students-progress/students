package controller;

import service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 02.02.2017.
 */@WebServlet("/change-mark")
public class MarkChangeControl extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service =new StudentService();

        req.getRequestDispatcher("/template2.jsp").forward(req,resp);
    }
}
