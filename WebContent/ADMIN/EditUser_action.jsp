<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String userName = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
int verifyUEdit= adminUi.editUserProfile(firstName, lastName, userName, password, type, status);
if(verifyUEdit == 0){
	response.sendRedirect("EditUser.jsp");
}
else if(verifyUEdit == -1){
	response.sendRedirect("EditUser.jsp?Error=-1");
}
else if(verifyUEdit == -2){
	response.sendRedirect("EditUser.jsp?Error=-2");
}
else if(verifyUEdit == -3){
	response.sendRedirect("EditUser.jsp?Error=-3");
}
else if(verifyUEdit == -4){
	response.sendRedirect("EditUser.jsp?Error=-4");
}
%>