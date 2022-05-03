<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="BSS/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/main.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="resources/seat.css" />
    <title>Sky - Flight Seat</title>
  </head>
  <body>
  
<%@page import="com.dao.UserDao,com.bean.*,java.util.*"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!-- Include navigation bar -->  
<jsp:include page="navigationbar.jsp"></jsp:include>
    
<%
//if user not yet log in or register, go to login page
if(request.getSession(false) == null) {
	response.sendRedirect("login.jsp");
}

//Selected destination & flight
String destname=request.getParameter("destname");
String idflight=request.getParameter("idflight"); 

//Retrieve flight seat information
List<User> list=UserDao.getTicketByIdFlight(Integer.parseInt(idflight)); 
request.setAttribute("list",list);

//Retrieve seat from database
User u= UserDao.getSeatAvailable(Integer.parseInt(idflight));
request.setAttribute("u",u);
%>

<div class="container">
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
    <li class="breadcrumb-item"><a href="viewschedule.jsp">Schedule</a></li>
    <li class="breadcrumb-item active" aria-current="page">Seat</li>
  </ol>
</nav>
</div>
		
<h1>Flight to <%= destname%></h1>

<!-- Declaration for value of price & seat available -->
<input type="hidden" id="ticketPrice" value="<%= u.getPrice()%>"/>
<input type="hidden" id="seatFull" value="0"/>

<!-- Display price & seat available for the flight -->
<h5>Price: RM<%=u.getPrice() %></h5>
<h5>seat available: <%=u.getSeat_available() %></h5>

<!-- Display user selected seat & total price -->
<p class="text">You have selected <span id="count">0</span> seats and booking fee RM<span id="price">0</span></p>

<!-- Legend -->
<ul class="lgd">
	<li>
    	<div class="seat"></div>
        <small>Available</small>
    </li>
    <li>
        <div class="seat selected"></div>
        <small>Selected</small>
     </li>
     <li>
        <div class="seat occupied"></div>
        <small>Occupied</small>
     </li>
</ul>

<!-- Seat form -->		
<form action="bookTicket" method="post" class="border border-5">
<input type="hidden" name="idflight" value="<%=Integer.parseInt(idflight)%>"/>
<% 
	//Counter for column in each row
	int rowcounter=0;
	for(User user: list){
		//New row if current row have 2 column
		if(rowcounter % 2 == 0){ %>
			<div class="row">
<%		}
		if(user.getIdpassenger() != 0){ 
%>
			<input class="seat occupied" type="checkbox" name="seatNum<%= user.getIdticket()%>" value="<%= user.getIdticket()%>"/>
<% 		} 
		else {%>
			<input class="seat" type="checkbox" name="seatNum<%= user.getIdticket()%>" value="<%= user.getIdticket()%>" onclick="showChecked()"/>
<% 		} %>
<% 		if(rowcounter % 2 == 1){ %>
		</div>
<%
		}
		rowcounter++; 
	}; %>
	
	<input type="submit" id="submit" value="Submit"/>
</form>

<!-- Image -->	
<div class="position-relative">
	<img src="resources/images/planeSeatbg.png" class="seatbg">
</div>

<script src="javascript/seat.js"></script>
<script src="BSS/js/bootstrap.min.js"></script>
 </body>
</html>
