<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sky - View Booking</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/viewbooking.css" rel="stylesheet" type="text/css">
</head>

<body>

<%@ page import="com.dao.UserDao, com.bean.User, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="setFoot">
<!-- Display user reserved tickets -->
<div class="container1">
<h1 class="title">Ticket Booking Record<small>Sky Airline</small></h1>

<% 
	// To retrieve current active user id
	int currentId = 0;		
	currentId=UserDao.getRecordByActive().getIdpassenger();
	
	// Retrieve booking ticket records based on the user's ID
	List<User> list = UserDao.getTicketByIdPassenger(currentId);
	request.setAttribute("list",list);
%>

<!-- Display user tickets -->
<table style="width:100%;">
	<tr class="table-header">
		<th >Ticket No.</th>
		<th >Flight ID</th>
		<th >ID Passenger</th>	
		<th >Remove</th>
	</tr>

	<c:forEach items="${list}" var="u">
	<tr class="table-row">
		<td>${u.getIdticket()}</td>
		<td>${u.getIdflight()}</td>
		<td>${u.getIdpassenger()}</td>
		
		<!-- Cancel ticket -->
		<td>
			<a href="cancelbooking.jsp?idticket=${u.getIdticket()}&idflight=${u.getIdflight()}" class="btn btn-danger">Cancel</a>
		</td>
	</tr>
	</c:forEach>
</table>
</div>
</div>

<footer class="page-footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12">
				<h5 class="text-uppercase font-weight-bold">Project members</h5>			
						<p>  Alvin Yeoh Yi Wei - SWE1904865
						<br/>Ng Yoo Wee        - SWE1904867
						<br/>Teo Yin Yin       - SWE1904136</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 qt-pos">
				<h5 class="text-uppercase font-weight-bold">Company Info</h5>
				<p>Sky
				<br/>sky@xmu.edu.my
				<br/>+60123456789</p>
			</div>
		</div>
	</div>
		<div class="footer-copyright text-center">(c) 2021 Sky - XMUM</div>
</footer>

<script src="BSS/js/bootstrap.min.js"></script>
</body>
</html>
