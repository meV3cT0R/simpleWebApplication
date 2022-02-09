package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;
import com.service.UserService;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet({ "/SignUpServlet", "/singup" })
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("activeUsers") != null)
			request.getRequestDispatcher("home.jsp").forward(request,response);
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		User user = new User();
		
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setUserName(userName);
		user.setPassword(password);
		
		UserService us = new UserServiceImpl();
		if(us.register(user)) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			request.setAttribute("errorMessage", "Something went wrong");
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
	}

}
