package com.pro.user.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pro.user.vo.User;

@WebServlet(name="loginEndServlet", urlPatterns="/user/loginEnd")
public class loginEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public loginEndServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		
		System.out.println("비밀번호 : " + pw);
		
			User u = new User();
			u.setUserId(id);
			u.setUserPw(pw);
			u.setUserNumber(1);
		
		if(u != null) {
			HttpSession session = request.getSession(true);
			if(session.isNew() || session.getAttribute("user")==null) {
				session.setAttribute("user", u);
				session.setMaxInactiveInterval(60*30);
			}
			response.sendRedirect("/");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("/views/user/login_fail.jsp");
			view.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
