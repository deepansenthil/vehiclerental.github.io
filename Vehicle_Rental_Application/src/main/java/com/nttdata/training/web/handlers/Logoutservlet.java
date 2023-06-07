package com.nttdata.training.web.handlers;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logoutservlet extends HttpServlet {

    

	 
	
	
	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{

		 
		
		HttpSession mysession=request.getSession(false);// false- it will not create a new session object__it will retrive the existing session,created by application on behalf of user.

		 mysession.invalidate();
			// if we log out the session become invalidated, then the session object is nullified the session will end the session will not return session data(user data).
		    response.setContentType("text/html");

			RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
	
			dispatcher.forward(request, response);
		 
		 
	}
}