<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- To database connection -->
<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//Select active->inactive
u=UserDao.getRecordByActive();
u.setStatus("inactive");
UserDao.updateUser(u);
//Invalidate session
request.getSession().invalidate();

response.sendRedirect("home.jsp");
%>

</body>
</html>