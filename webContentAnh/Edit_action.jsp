<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
UserUI userUI = (UserUI)session.getAttribute("UserUI");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String password = request.getParameter("Password");
boolean verifyUEdit= userUI.editProfile(firstName, lastName, password);
if(verifyUEdit==true){
response.sendRedirect("UserEditProfile.jsp");
}
else if(verifyUEdit==false){
	response.sendRedirect("UserEditProfile.jsp?Error=-1");
}
%>