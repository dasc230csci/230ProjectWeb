<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
UserUI userUI = (UserUI)session.getAttribute("UserUI");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String password = request.getParameter("Password");
userUI.editProfile(firstName, lastName, password);
response.sendRedirect("Menu.jsp");
%>