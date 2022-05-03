<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//Update user record
int i=UserDao.updateUser(u);
response.sendRedirect("accountdetails.jsp");
%>