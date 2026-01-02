package com.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login") 
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		if ("admin".equals(username) && "1234".equals(password)) {

			HttpSession session = request.getSession();
			session.setAttribute("username", username);

			RequestDispatcher rd =
					request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);

		} else {

			request.setAttribute("error", "Invalid username or password");

			RequestDispatcher rd =
					request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}
}
