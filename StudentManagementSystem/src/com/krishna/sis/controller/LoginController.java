package com.krishna.sis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.krishna.sis.dto.UserDTO;
import com.krishna.sis.service.UserService;
import com.krishna.sis.service.UserServiceImpl;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String RECOVER_PWD = "/forgotPassowrd.jsp";

	UserService userService = new UserServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("getpassword")) {
			forward = RECOVER_PWD;
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("uName");
		String password = request.getParameter("pass");
		UserDTO userDTO = userService.getUserByUserNameAndPassword(userName, password);
		if (userDTO.getUsername() != null && userDTO.getPassword() != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("uname", userName);
			session.setAttribute("id", userDTO.getUserId());
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
	}

}
