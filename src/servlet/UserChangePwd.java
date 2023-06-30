package servlet;

import model.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "user_changepwd",urlPatterns = "/user_changepwd")
public class UserChangePwd extends HttpServlet {

    private UserService uService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String password = request.getParameter("password");
        String newPwd = request.getParameter("newPassword");

        User u = (User) request.getSession().getAttribute("user");
        if(password.equals(u.getPassword())) {
            u.setPassword(newPwd);
            uService.updatePwd(u);
            request.setAttribute("msg", "修改密码成功！");
            request.getRequestDispatcher("/user_center.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/reset_password.jsp").forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
