package com.nttdata.training.web.handlers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.RegisterDAO;
import com.nttdata.training.domain.customer;
 

public class RegisterUser implements HttpRequestHandler 
{
	
	static Logger log = Logger.getLogger(RegisterUser.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		RegisterDAO dao = new RegisterDAO();
		customer user = new customer();
		
		String name=request.getParameter("name");
		user.setUser_id(Integer.parseInt(request.getParameter("user_id")));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setCity(request.getParameter("city"));
		user.setEmail(request.getParameter("email"));
		user.setContact_number(Integer.parseInt(request.getParameter("contact")));

		boolean isExists;
		try {
			isExists = dao.validateUser(user.getUser_id()); // is this user already existed ? / not 

			if (isExists)
			{
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("..\\pages\\Register.jsp");
				request.setAttribute("Err",	"User already registered with the system");
				dispatcher.forward(request, response);
			} else 
			{
				
				
				int finalRes = dao.registerUser(user);
				
				if (finalRes > 0)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("..\\pages\\success.jsp");
					request.setAttribute("success","User succesfully registered");
					request.setAttribute("details", user);
					dispatcher.forward(request, response);
					
				}
			}
		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
