<%@ page language="java" import="UI.*"%>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
String schoolName = request.getParameter("schoolName");
userUi.saveUniversity(schoolName);
response.sendRedirect("ManageSavedSchools.jsp");
%>