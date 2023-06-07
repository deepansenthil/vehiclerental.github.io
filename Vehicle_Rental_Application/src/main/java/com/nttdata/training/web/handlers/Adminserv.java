package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.AddvehicleDAO;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.DiscountupdateDAO;
import com.nttdata.training.dao.ValidatebookingDAO;
import com.nttdata.training.dao.View_vehicleDAO;
import com.nttdata.training.dao.ViewfeedDAO;
import com.nttdata.training.dao.ViewuserDAO;
import com.nttdata.training.domain.Booking;
import com.nttdata.training.domain.Feedback;
import com.nttdata.training.domain.Product;
import com.nttdata.training.domain.vehicle;
 

public class Adminserv implements HttpRequestHandler 
{
	
	static Logger log = Logger.getLogger(Adminserv.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		AddvehicleDAO dao = new AddvehicleDAO ();
		vehicle veh = new vehicle();
		
		String ref =request.getParameter("parameter_name");
		
		
		switch (ref)
		{
		
		
		//veh_1
		case "insert" :
		
		
		veh.setVehicle_number(Integer.parseInt(request.getParameter("number")));
		veh.setVehicle_type(request.getParameter("type"));
		veh.setVehicle_name(request.getParameter("name"));
		veh.setVehicle_price(Integer.parseInt(request.getParameter("price")));
		veh.setDiscount(Integer.parseInt(request.getParameter("discount")));
		
	

	
		try {
			
			
				
				
				int finalRes = dao.addvehicle(veh);
				
				if (finalRes > 0)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
					request.setAttribute("Err1","Vehicle Added Successfully ! ");
					dispatcher.forward(request, response);
					
				}
			
		} catch (DAOAppException e)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
		
		break;
		
		
		case "viewveh":
			
			try {

				List<vehicle> vehiclelist= View_vehicleDAO.viewvehicle_noparam();
				request.setAttribute("vehiclelist", vehiclelist);
				String url="view_discount.jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response); // giving request and response.
				
				

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
		
		
		break;
		
		
		
		
		
		case "discount" :
			
			DiscountupdateDAO dao1 = new DiscountupdateDAO ();
			veh.setVehicle_number(Integer.parseInt(request.getParameter("vehicle_number")));
			veh.setDiscount(Integer.parseInt(request.getParameter("discount")));
			
			try {
				
					int finalRes = dao1.updatediscount(veh );
					
					if (finalRes > 0)
					{
						RequestDispatcher dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
						request.setAttribute("Err2","Discount Updated Successfully ! ");
						dispatcher.forward(request, response);
						
					}
				
			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);
			}
			
			break;
			
			
			
case "viewbook":
	
                    ValidatebookingDAO dao2 = new ValidatebookingDAO();
			
			try {

				List<Booking> bookinglist=  ValidatebookingDAO .validatevehiclefull();
				request.setAttribute("bookinglist", bookinglist);
				String url="viewbooking.jsp";
				
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response); // giving request and response.
				
				

			} catch (DAOAppException e) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);

			}
		
		
		break;
			
			
case "viewuser":
	
                 ViewuserDAO dao3 = new  ViewuserDAO ();

                    try {

                 List<Booking> userlist=   ViewuserDAO .viewuser();
                 request.setAttribute("userlist", userlist);
                 String url="viewuser.jsp";

                 RequestDispatcher rd=request.getRequestDispatcher(url);
                 rd.forward(request, response); // giving request and response.



                 } catch (DAOAppException e) {
                 RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
                 request.setAttribute("Err", e.getMessage());
                 dispatcher.forward(request, response);

                  }


break;


case "viewfeed":

     ViewfeedDAO dao4 = new  ViewfeedDAO();

        try {

     List<Feedback> feedlist=   ViewfeedDAO.viewfeed();
     request.setAttribute("feedlist", feedlist);
     String url="viewfeed.jsp";

     
     RequestDispatcher rd=request.getRequestDispatcher(url);
     rd.forward(request, response); // giving request and response.



     } catch (DAOAppException e) {
     RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
     request.setAttribute("Err", e.getMessage());
     dispatcher.forward(request, response);

      }


break;		
			
			
			
			
		
		} //switch
	}

}
