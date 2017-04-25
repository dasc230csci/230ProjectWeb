<%@page language="java" import="UI.*" import = "Entity.*"%>
<html>
<head>

<title>Add User Form</title>
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("-1")){
		out.println("Please choose different username");
}
	if(error != null && error.equals("-2")){
		out.println("Please input value in the required fields");
}
	if(error != null && error.equals("-3")){
		out.println("Invalid type, please input a(admin) or u(user)");
}
	if(error != null && error.equals("-4")){
		out.println("Invalid status, please input Y(active) or N(inactive)");
}
	if(error != null && error.equals("-5")){
		out.println("Add user failed, please try again");
}
%>
</head>
<body>
<br>
Add User form:<br>
<br>
<form method="post" action="Add_action.jsp" name="addUser"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status"> </td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Add"
name="Add" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>

