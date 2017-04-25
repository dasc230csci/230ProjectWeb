<%@ page language="java" import="UI.*"%>
<%
UserUI userUI = (UserUI)session.getAttribute("userUi");
String username = userUI.viewProfile().getUsername();
String schoolName = request.getParameter("schoolName");
boolean removed = userUI.removeSavedUniversity(schoolName);

if (removed == true){
response.sendRedirect("ManageSavedSchool.jsp?Success=1");
}
%>    
