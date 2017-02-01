package controller;

import entity.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Asus on 10.01.2017.
 */
@WebServlet ("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirectString="/loginPage";
        User user=new User();
        user.setLogin(req.getParameter("login"));
        user.setPassword(req.getParameter("password"));
        UserService userService=new UserService();
        List<User> users =userService.getAllUsers();
        for(User u:users){
            if(u.equals(user)){

                req.getSession().setAttribute("user", user);
                redirectString="/main";
            }
        }
        resp.sendRedirect(redirectString);
    }
}
