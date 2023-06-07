package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.LoginDAO;
import com.nttdata.training.domain.customer;

public class Login implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(Login.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
	
		

		String param = request.getParameter("parameter_name");
		
		switch (param)
		{
		
		
	case "login":
		PrintWriter out = response.getWriter();
		
		int user_id = Integer.parseInt(request.getParameter("user_id"));
		String password = request.getParameter("password");
		
		
		 String username="0";
		int flag = -1;
		List users = null;
		LoginDAO dao = new LoginDAO();
		try {
			users = dao.validateUser(user_id);
			log.info(users);
			for (Object object : users) {

				customer user = (customer) object;
				  username =user.getName();
				if (user.getPassword().equals(password)) 
				{
					flag = 0;
					break;
				}
			}
			   
			
			log.info("Flag in login " + flag);
			if (flag == 0) 
			{
				
				HttpSession mysession=request.getSession();
				mysession.setAttribute("user",username);   // session data as username.
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
		
				dispatcher.forward(request, response);

			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
				request.setAttribute("Err","user id or password is incorrect");
				dispatcher.forward(request, response);
			}

		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}
   break;
   
   
		case "logout":
			

			 
			
			HttpSession mysession=request.getSession(false);// false- it will not create a new session object__it will retrive the existing session,created by application on behalf of user.

			   mysession.invalidate();
				// if we log out the session become invalidated, then the session object is nullified the session will end the session will not return session data(user data).
			    response.setContentType("text/html");  // setting type of content as text format.

				RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
		
				dispatcher.forward(request, response);
			 
			
			
		break;
		
		
		}// switch
	}
}
