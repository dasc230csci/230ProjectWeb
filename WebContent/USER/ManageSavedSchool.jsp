<%@page language="java" import="UI.*" import = "Entity.*"%>
<% UserUI uUI = (UserUI)session.getAttribute("userUi");
String error = request.getParameter("Error");
if(error !=null && error.equals("1")){
	out.println("You've already Saved");
}
%>

<html><head>
  
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <title>ManageSavedSchools</title>
  <%
	String success = request.getParameter("Success");
	if(success != null && success.equals("1")){
		out.println("School Removed Successfully!");
}
%>

  
</head><body>
<h2 style="text-align: center;"> Manage Saved Schools </h2>


  

    <% if (uUI.viewSavedSchool().isEmpty()){ %>
    	<h4 style="text-align: center;"> You have no saved schools! </h4>
    	
<%} else { %>

  <div style="text-align: center;"> </div>
<table style="text-align: left; width: 955px; height: 33px;" border="1" cellpadding="2" cellspacing="2">
    <tbody>
    <% for (String u : uUI.viewSavedSchool()) {  %>
      <tr>
        <td style="vertical-align: top; width: 33%;">
         <form action="RemoveSavedSchool.jsp" name="RemoveSavedSchools">
         <input name="RemoveSchool" value="Remove" type="submit"><input name="schoolName"
			value="<%out.print(u);%>" type="hidden"></form>
         <br>
        </td>
        <td style="vertical-align: top; width: 33%;"><%out.print(u);%><br>
        </td>
        <td style="vertical-align: top;">
        <form action="ViewSchool.jsp" name="ViewSavedSchools">
        <input name="ViewSchool" value="View" type="submit">
        <input name="schoolName" value="<%out.print(u);%>" type="hidden"></form>
        </td>
      </tr>
      <%} %>
    </tbody>
  </table>
  <br>

<%} %>

</body></html>