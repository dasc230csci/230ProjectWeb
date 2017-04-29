<%@page import="Controller.*"%>
<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
AccountDBController adminUi = new AccountDBController();
String username = request.getParameter("Username");
if(adminUi.deleteUser(username)){
	response.sendRedirect("ManageUserMenu.jsp?Error=0");
}
else{
	response.sendRedirect("ManageUserMenu.jsp?Error=-1");
}
%>