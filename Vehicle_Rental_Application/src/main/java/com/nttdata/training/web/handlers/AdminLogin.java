package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.LoginAdminDAO;
import com.nttdata.training.domain.Admin;

public class AdminLogin implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(Login.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
	
		PrintWriter out = response.getWriter();
		
		int admin_id = Integer.parseInt(request.getParameter("admin_id"));
		String password = request.getParameter("password");
		
		
		
		int flag = -1;
		List users = null;
		LoginAdminDAO dao = new LoginAdminDAO();
		try {
			users = dao.validateAdmin(admin_id);
			log.info(users);
			for (Object object : users) {

				Admin user = (Admin) object;
				 
				if (user.getPassword().equals(password)) 
				{
					flag = 0;
					break;
				}
			}
			   
			
			log.info("Flag in login " + flag);
			if (flag == 0) 
			{
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
		
				dispatcher.forward(request, response);

			} 
			else
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("admin_login.jsp");
				request.setAttribute("Err","admin id or password is incorrect");
				dispatcher.forward(request, response);
			}

		} catch (DAOAppException e) 
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

	}
}
