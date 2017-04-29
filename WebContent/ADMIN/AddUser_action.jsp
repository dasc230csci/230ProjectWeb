<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
AdminUI aUI = (AdminUI)session.getAttribute("adminUi");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String uname = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
int verifyCreate = aUI.createUser(fname, lname, uname, password, type, status);
if(verifyCreate==0){
response.sendRedirect("Add.jsp");
}
else if(verifyCreate==-1){
	response.sendRedirect("Add.jsp?Error=-1");
}
else if(verifyCreate==-2){
	response.sendRedirect("Add.jsp?Error=-2");
}
else if(verifyCreate==-3){
	response.sendRedirect("Add.jsp?Error=-3");
}
else if(verifyCreate==-4){
	response.sendRedirect("Add.jsp?Error=-4");
}
else{
	response.sendRedirect("Add.jsp?Error=-5");
}
%>