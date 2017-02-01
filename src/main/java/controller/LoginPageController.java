package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 10.01.2017.
 */@WebServlet ("/loginPage")
public class LoginPageController  extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("currentPage1","pages/loginPage.jsp");
        req.getRequestDispatcher("template1.jsp").forward(req,resp);


    }
}
