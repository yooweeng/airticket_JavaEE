package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
@WebServlet("/validateUser")
public class validateUser extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		PrintWriter out=res.getWriter();
		
		//Retrieve passenger information
		List<User> list=UserDao.getPassengerRecords();
		req.setAttribute("list",list);
		
		for(User user: list){
			//To make sure every account stays inactive for every instance
			user.setStatus("inactive");
			UserDao.updateUser(user);
			
			//if passenger id and password matches
			if(user.getEmail().equals(req.getParameter("email"))) {
				if(user.getPassword().equals(req.getParameter("password"))) {
					user.setStatus("active");
					UserDao.updateUser(user);
					res.sendRedirect("login-success.jsp");
				}
			}
		}
		
		//cannot find pre-exist user account in database
		out.println("<script type=\"text/javascript\">");
		out.println("location='login.jsp';");
		out.println("alert('User or password incorrect');");
		out.println("</script>");
	}

}
