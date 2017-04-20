<%@page language="java" import="UI.*"%>
<%
String username = request.getParameter("Username");
String password = request.getParameter("Password");
LoginUI ui = new LoginUI();
String verify = ui.verifyUser(username, password);
if(verify.equals("u")){
	UserUI userUi = new UserUI(username);
	session.setAttribute("userUi", userUi);
	response.sendRedirect("SearchMenu.jsp");
}
else if(verify.equals("a")){
	AdminUI adminUi = new AdminUI(username);
	session.setAttribute("adminUi", adminUi);
	response.sendRedirect("ManageUniversityMenu.jsp");
}
else if(verify.equals("f")){
	response.sendRedirect("index.jsp?Error=1"); // password invalid
}
else{
	response.sendRedirect("index.jsp?Error=2"); // user doesn't exist
}
%>