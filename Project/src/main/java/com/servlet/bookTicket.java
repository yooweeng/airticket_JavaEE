package com.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.bean.*;
import java.util.*;

/**
 * Servlet implementation class bookTicket
 */
@WebServlet("/bookTicket")
public class bookTicket extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int currentId = -1;
		
		//To retrieve selected flight id
		int idflight = Integer.parseInt(req.getParameter("idflight"));

		//to retrieve current active user id
		currentId=UserDao.getRecordByActive().getIdpassenger();
		
		List<User> list=UserDao.getTicketRecords();
		req.setAttribute("list",list);
		
		//Update seats selected by user as booked seats into database
		for(User user: list){			
			if(req.getParameter("seatNum"+user.getIdticket()) != null) {
				user.setIdpassenger(currentId);
				UserDao.updateTicket(user);
			}
		}
		
		//Update current seat available after user book
		int i=UserDao.updateSeatAvailable(idflight);
		
		res.sendRedirect("viewbooking.jsp");
	}

}
