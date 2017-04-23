<%@page language="java" import="UI.*" import = "Entity.*"%>
<% UserUI uUI = (UserUI)session.getAttribute("UserUI");%>

<html><head>
  
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <title>ManageSavedSchools</title>

  
</head><body>
<h2 style="text-align: center;"> Manage Saved Schools </h2>


  

    <% if (uUI.viewSavedSchool().isEmpty()){ %>
    	<h4 style="text-align: center;"> You have no saved schools! </h4>
    	
<%} else { %>
<form action="......." name="ManageSavedSchools">
  <div style="text-align: center;"> </div>
<table style="text-align: left; width: 955px; height: 33px;" border="1" cellpadding="2" cellspacing="2">
    <tbody>
    <% for (String u : uUI.viewSavedSchool()) {  %>
      <tr>
        <td style="vertical-align: top; width: 33%;"><input name="RemoveSchool" value="Remove" type="submit"><br>
        </td>
        <td style="vertical-align: top; width: 33%;"><%out.print(u); %><br>
        </td>
        <td style="vertical-align: top;"><input name="ViewSchool" value="View" type="submit"><br>
        </td>
      </tr>
      <br>
      <%} %>
    </tbody>
  </table>
  <br>
</form>
<%} %>

</body></html>