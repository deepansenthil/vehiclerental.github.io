package com.nttdata.training.web.handlers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.BookingDAO;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.domain.Booking;
 

public class BookVehicle implements HttpRequestHandler 
{
	
	static Logger log = Logger.getLogger(BookVehicle.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		BookingDAO dao = new BookingDAO();
		Booking book = new Booking ();
		
		String bk="Booked";
		book.setUser_id(Integer.parseInt(request.getParameter("userid")));
		book.setLocation(request.getParameter("option_1"));
		book.setVehicle_name(request.getParameter("option_2"));
		book.setVehicle_number(Integer.parseInt(request.getParameter("vehicle_number")));
		book.setBegin_date(request.getParameter("startdate"));
		book.setEnd_date(request.getParameter("enddate"));
		book.setBooking_status(bk);

		
		try {
			
			
				
				
				int finalRes = dao.bookvehicle(book);
				
				if (finalRes > 0)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("..\\pages\\book_success.jsp");
					
					request.setAttribute("message1",book.getVehicle_name());
					request.setAttribute("message2",book.getBegin_date());
					request.setAttribute("message3",book.getLocation());
					dispatcher.forward(request, response);
					
				}
			
		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
