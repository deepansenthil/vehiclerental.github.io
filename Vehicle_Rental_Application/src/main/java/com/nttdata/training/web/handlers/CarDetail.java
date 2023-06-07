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
public class CarDetail implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(Login.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
	
		PrintWriter out = response.getWriter();
		
		
		String vname = request.getParameter("name");
		
		switch (vname)
		{
		
		
		//veh_1
		case "Innova_Crysta" :
		
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
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
				request.setAttribute("Err","The vehicle already booked");
				dispatcher.forward(request, response);

			} else 
			{
				
				
				List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
				request.setAttribute("vehiclelist", vehiclelist);
				String url="vehicle_1.jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response); // giving request and response.
				
				
			}

		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}
		
		break;
		
		// veh 2
		
		
		case "Suzuki_Baleno":
			int flag1 = -1;
			List users1 = null;
			ValidatebookingDAO dao1 = new ValidatebookingDAO();
			try {
				users1 = dao1.validatevehicle(vname);
				log.info(users1);
				for (Object object1 : users1) {

					Booking user = (Booking) object1;
					 
					if (user.getVehicle_name().equals(vname)) 
					{
						flag1 = 0;
						break;
					}
				}
				   
				
				log.info("Flag in login " + flag1);
				if (flag1 == 0) 
				{
					
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
					request.setAttribute("Err1","The vehicle already booked");
					dispatcher.forward(request, response);

				} else 
				{
					List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
					request.setAttribute("vehiclelist", vehiclelist);
					String url="vehicle_2.jsp";
					
					RequestDispatcher rd=request.getRequestDispatcher(url);
					rd.forward(request, response); // giving request and response.
					
					
				}

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
			
			break;
			
			// veh 3
			
		case "Mahindra_Scorpio":
			int flag2 = -1;
			List users2 = null;
			ValidatebookingDAO dao2 = new ValidatebookingDAO();
			try {
				users2 = dao2.validatevehicle(vname);
				log.info(users2);
				for (Object object2 : users2) {

					Booking user = (Booking) object2;
					 
					if (user.getVehicle_name().equals(vname)) 
					{
						flag2 = 0;
						break;
					}
				}
				   
				
				log.info("Flag in login " + flag2);
				if (flag2 == 0) 
				{
					
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
					request.setAttribute("Err2","The vehicle already booked");
					dispatcher.forward(request, response);

				} else 
				{
					List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
					request.setAttribute("vehiclelist", vehiclelist);
					String url="vehicle_3.jsp";
					
					RequestDispatcher rd=request.getRequestDispatcher(url);
					rd.forward(request, response); // giving request and response.
					
					
				}

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
			
			break;
			
			
			//veh 4
			
		case "Jeep_Compass":
			int flag3 = -1;
			List users3 = null;
			ValidatebookingDAO dao3 = new ValidatebookingDAO();
			try {
				users3 = dao3.validatevehicle(vname);
				log.info(users3);
				for (Object object3 : users3) {

					Booking user = (Booking) object3;
					 
					if (user.getVehicle_name().equals(vname)) 
					{
						flag3 = 0;
						break;
					}
				}
				   
				
				log.info("Flag in login " + flag3);
				if (flag3 == 0) 
				{
					
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
					request.setAttribute("Err3","The vehicle already booked");
					dispatcher.forward(request, response);

				} else 
				{
					List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
					request.setAttribute("vehiclelist", vehiclelist);
					String url="vehicle_4.jsp";
					
					RequestDispatcher rd=request.getRequestDispatcher(url);
					rd.forward(request, response); // giving request and response.
					
					
				}

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
			
			break;
			
			
	//veh 5
			
		case "Vitara_Breeza":
			int flag4 = -1;
			List users4 = null;
			ValidatebookingDAO dao4 = new ValidatebookingDAO();
			try {
				users4 = dao4.validatevehicle(vname);
				log.info(users4);
				for (Object object4 : users4) {

					Booking user = (Booking) object4;
					 
					if (user.getVehicle_name().equals(vname)) 
					{
						flag4 = 0;
						break;
					}
				}
				   
				
				log.info("Flag in login " + flag4);
				if (flag4 == 0) 
				{
					
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
					request.setAttribute("Err4","The vehicle already booked");
					dispatcher.forward(request, response);

				} else 
				{
					List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
					request.setAttribute("vehiclelist", vehiclelist);
					String url="vehicle_5.jsp";
					
					RequestDispatcher rd=request.getRequestDispatcher(url);
					rd.forward(request, response); // giving request and response.
					
					
				}

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
			
			break;
			
			
			//veh 6
			
					case "Tata_Punch":
						int flag5 = -1;
						List users5 = null;
						ValidatebookingDAO dao5 = new ValidatebookingDAO();
						try {
							users5 = dao5.validatevehicle(vname);
							log.info(users5);
							for (Object object5 : users5) {

								Booking user = (Booking) object5;
								 
								if (user.getVehicle_name().equals(vname)) 
								{
									flag5 = 0;
									break;
								}
							}
							   
							
							log.info("Flag in login " + flag5);
							if (flag5 == 0) 
							{
								
								
								RequestDispatcher dispatcher = request.getRequestDispatcher("user_op.jsp");
								request.setAttribute("Err5","The vehicle already booked");
								dispatcher.forward(request, response);

							} else 
							{
								List<Booking> vehiclelist= View_vehicleDAO.viewvehicle(vname);
								request.setAttribute("vehiclelist", vehiclelist);
								String url="vehicle_6.jsp";
								
								RequestDispatcher rd=request.getRequestDispatcher(url);
								rd.forward(request, response); // giving request and response.
								
								
							}

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
