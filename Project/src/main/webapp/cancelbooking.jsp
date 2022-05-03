<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//Retrieve flight id
int idflight= Integer.parseInt(request.getParameter("idflight"));

//Update database information
int i=UserDao.cancelBooking(u);
i=UserDao.updateSeatAvailable(idflight);

response.sendRedirect("viewbooking.jsp");
%>
