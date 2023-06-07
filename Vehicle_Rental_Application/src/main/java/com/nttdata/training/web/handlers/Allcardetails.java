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
import com.nttdata.training.domain.vehicle;
public class Allcardetails implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(Login.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
	
		PrintWriter out = response.getWriter();
		
		
		String swt = request.getParameter("value");
		
		switch (swt)
		{
		
		
		//veh_1
		case "viewcar" :
		
			
			try {

				List<vehicle> vehiclelist= View_vehicleDAO.viewvehicle_noparam();
				request.setAttribute("vehiclelist", vehiclelist);
				String url="view_allvehicles.jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response); // giving request and response.
				
				

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			
		

		}
		
		break;
		
		
			
			
		

	}
}
}
