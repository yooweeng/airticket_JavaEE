<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
//Add record into database
UserDao.register(u);
response.sendRedirect("home.jsp");
%>