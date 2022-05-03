<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//Update seat available for flights
int i=UserDao.updateSeatAvailable(300);
i=UserDao.updateSeatAvailable(301);

//Perform delete account information on database
UserDao.delete(u);

//Invalidate current session
request.getSession().invalidate();

response.sendRedirect("home.jsp");
%>