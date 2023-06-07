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
import com.nttdata.training.dao.ValidatebookingDAO;
import com.nttdata.training.dao.View_vehicleDAO;
import com.nttdata.training.domain.Booking;
import com.nttdata.training.domain.Product;
public class Allcarbook implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(Login.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
	
		PrintWriter out = response.getWriter();
		
		
		String vname = request.getParameter("value");
	
		
		int flag = -1;
		List users = null;
		ValidatebookingDAO dao = new ValidatebookingDAO();
		try {
			users = dao.validatevehicle(vname);
			log.info(users);
			for (Object object : users) {

				Booking user = (Booking) object;
				 
				if (user.getVehicle_name().equals(vname)) 
				{
					flag = 0;
					break;
				}
			}
			   
			
			log.info("Flag in login " + flag);
			if (flag == 0) 
			{
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("already_veh_book.jsp");
				request.setAttribute("Err","The vehicle already booked");
				dispatcher.forward(request, response);

			} else 
			{
				
				
				List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
				request.setAttribute("vehiclelist", vehiclelist);
				String url="allvehicle_descript.jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response); // giving request and response.
				
				
			}

		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

		
		
			
			
		

	
}
}
