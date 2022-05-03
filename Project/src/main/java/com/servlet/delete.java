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
 * Servlet implementation class validateUser
 */
@WebServlet("/delete")
public class delete extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int currentId = -1;
		
		//to retrieve current active user id
		currentId=UserDao.getRecordByActive().getIdpassenger();
		
		//Retrieve ticket record
		List<User> list=UserDao.getTicketRecords();
		req.setAttribute("list",list);
		
		//Cancel tickets booked by the user
		for(User user: list){			
			if(user.getIdpassenger()==currentId) {
				user.setIdpassenger(0);
				UserDao.updateTicket(user);
			}
		}
		res.sendRedirect("deleteaccount.jsp?idpassenger="+currentId);
		
	}

}
