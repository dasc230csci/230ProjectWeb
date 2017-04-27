<%@ page language="java" import="Controller.*, Entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>manageUsers</title>
</head>
<body>
<%
AdminFuncController afc = ((AdminFuncController)session.getAttribute("adminC"));
AccountController ac = new AccountController();

//out.println("Hello User " + afc.getProfile(username).getUsername());
%>

<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a> </td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;">Full name </td>
<td style="vertical-align: top; text-align: center;">Username </td>
<td style="vertical-align: top; text-align: center;">Password </td>
<td style="vertical-align: top; text-align: center;">Type </td>
<td style="vertical-align: top; text-align: center;">Status </td>
<td style="vertical-align: top; text-align: center;">Options</td>
</tr>
<%
for(Account a : ac.getAccountList()){%>
<tr>
<td style="vertical-align: top;">
<%out.print(a.getFirstName());%> </td>
<td style="vertical-align: top;">
<%out.print(a.getUsername());%> </td>
<td style="vertical-align: top;">
<%out.print(a.getPassword());%> </td>
<td style="vertical-align: top;">
<%out.print(a.getType());%> </td>
<td style="vertical-align: top;">
<%out.print(a.getStatus());%> </td>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete"> <input
name="Delete" value="Delete" type="submit"> <input name="Username"
value="<%out.print(a.getUsername());%>" type="hidden"> </form>
<form method="post" action="Edit.jsp" name="Edit"> <input
name="Edit" value="Edit" type="submit"> <input name="Username"
value="<%out.print(a.getUsername());%>" type="hidden"> </form></td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>