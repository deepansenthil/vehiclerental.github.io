package com.nttdata.training.web.handlers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.FeedbackDAO;
import com.nttdata.training.domain.Feedback;
 

public class Feedbackserv implements HttpRequestHandler 
{
	
	static Logger log = Logger.getLogger(Feedbackserv.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		FeedbackDAO dao = new FeedbackDAO ();
		Feedback fb = new Feedback();
		
		
		
		fb.setName(request.getParameter("name"));
		fb.setEmail(request.getParameter("email"));
		fb.setPhone(request.getParameter("phone"));
		fb.setFeedback(request.getParameter("message"));
	

	
		try {
			
			
				
				
				int finalRes = dao.addfeedback(fb);
				
				if (finalRes > 0)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("feedback.jsp");
					request.setAttribute("Err","Feed back submitted successfully ! ");
					dispatcher.forward(request, response);
					
				}
			
		} catch (DAOAppException e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
