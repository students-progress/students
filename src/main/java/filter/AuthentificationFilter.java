package filter;

import entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Asus on 10.01.2017.
 */@WebFilter("/*")
public class AuthentificationFilter implements Filter{

    public void init(FilterConfig filterConfig) throws ServletException {
    }
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (   HttpServletRequest)servletRequest;
        HttpServletResponse resp = (   HttpServletResponse) servletResponse;
        if (req.getRequestURI().endsWith("/loginPage")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith("/login")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".css")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".js")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".ttf")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".woff")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".jpg")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (req.getRequestURI().endsWith(".png")) {
            filterChain.doFilter(req, resp);
            return;
        }
        if(req.getSession().getAttribute("user")==null){
            resp.sendRedirect("/loginPage");
        }else {
            User user = (User)req.getSession().getAttribute("user");
            req.setAttribute("currentRole", user.getRole());
            filterChain.doFilter(req, resp);
            return;
        }
    }
    public void destroy() {

    }
}
