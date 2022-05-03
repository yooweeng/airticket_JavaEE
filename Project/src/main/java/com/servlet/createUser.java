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
@WebServlet("/createUser")
public class createUser extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		PrintWriter out=res.getWriter();
		boolean exist=false;
		
		String first_name = req.getParameter("first_name");
		String last_name = req.getParameter("last_name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		//Retrieve passenger information
		List<User> list=UserDao.getPassengerRecords();
		req.setAttribute("list",list);
	
		for(User user: list){
			//To make sure every account stays inactive for every instance
			user.setStatus("inactive");
			UserDao.updateUser(user);
			
			//if passenger email exists
			if(user.getEmail().equals(email)) {
				exist=true;
				break;
			}
		}
		
		if(exist) {
			//error
			out.println("<script type=\"text/javascript\">");
			out.println("location='login.jsp';");
			out.println("alert('Email already exist. Please try a new email address.');");
			out.println("</script>");
		} else {
			res.sendRedirect("registeruser.jsp?first_name="+first_name+"&last_name="+last_name+"&email="+email+"&password="+password);
		}
		
		
	}

}
