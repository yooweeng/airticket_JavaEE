<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sky - View Schedule</title>
<link href="BSS/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/main.css" rel="stylesheet" type="text/css">
<link href="resources/viewschedule.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@page import="com.dao.UserDao,com.bean.*,java.util.*"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Include navigation bar -->
<jsp:include page="navigationbar.jsp"></jsp:include>

<!-- Breadcrumb bootstrap -->
<div class="container">
	<nav aria-label="breadcrumb">
  		<ol class="breadcrumb">
    		<li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
    		<li class="breadcrumb-item active" aria-current="page">Schedule</li>
  		</ol>
	</nav>
	<h1>Flight schedule</h1>
</div>

<!-- Retrieve schedule from database -->
<%
List<User> list=UserDao.getAllScheduleRecords();
request.setAttribute("list",list);
%>

<!-- Display schedule -->
<div class="container">
<div class="accordion">
  <div class="accordion-item">
  <!-- Display the first flight -->
	<c:forEach items="${list}" end="0" var="u">
		<%
		User u= UserDao.getFlightRecordsById(300);
		User u1= UserDao.getSeatAvailable(300);
		%>
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
		<h3><%=u.getOrigin() %> to <%=u.getDestination() %></h3>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
      	<p>${u.getDescription()}</p>
		<table class="table table-striped border border-warning border-3 my-2">
			<thead>
				<tr>
					<th>ID</th>
					<th>Departure Time</th>
					<th>Departure Date</th>
					<th>Seat Available</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><%=u.getIdflight() %></th>
					<td><%=u.getDeparture_time() %></td>
					<td><%=u.getDate() %></td>
					<td><%=u1.getSeat_available() %></td>
					<td><a class="btn btn-primary" href="seat.jsp?destname=${u.getDestname()}&idflight=${u.getIdflight()}">Book Now</a></td>
				</tr>
			</tbody>
		</table>
      </div>
    </div>
    </c:forEach>
  </div>
  
  <div class="accordion-item">
  	<!-- Display the second flight -->
  	<c:forEach items="${list}" begin="1" var="u">
		<%
		User u= UserDao.getFlightRecordsById(301);
		User u1= UserDao.getSeatAvailable(301);
		%>
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        <h3><%=u.getOrigin() %> to <%=u.getDestination() %></h3>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <p>${u.getDescription()}</p>
		<table class="table table-striped border border-warning border-5">
			<thead>
				<tr>
					<th>ID</th>
					<th>Departure Time</th>
					<th>Departure Date</th>
					<th>Seat Available</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><%=u.getIdflight() %></th>
					<td><%=u.getDeparture_time() %></td>
					<td><%=u.getDate() %></td>
					<td><%= u1.getSeat_available() %></td>
					<td><a class="btn btn-primary" href="seat.jsp?destname=${u.getDestname()}&idflight=${u.getIdflight()}">Book Now</a></td>
				</tr>
			</tbody>
		</table>
      </div>
      
    </div>
    </c:forEach>
  </div>
</div>
</div>
<div class="setFoot"></div>

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