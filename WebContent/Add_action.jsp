<%@page language="java" import="UI.*" import = "Entity.*"%>
<%
AdminUI aUI = (AdminUI)session.getAttribute("AdminUI");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String uname = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
boolean create = true;
out.print(aUI.viewAllUser());
//for(Account account : aUI.viewAllUser()){
	//if(account.getUsername().equals(uname)){
		//response.sendRedirect("Add.jsp?Error=1");
		//create = false;
	//}
//}
//if(create){
//aUI.createUser(fname, lname, uname, password, type, status);
//response.sendRedirect("AdminMenu.jsp");
//}
%>