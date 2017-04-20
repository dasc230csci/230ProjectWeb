<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>manageUsers</title>
</head>
<body>
&lt;%
UserController uc = ((UserController)session.getAttribute("uc"));
out.println("Hello User " + uc.getCurrentUser().getUsername());
%&gt;
&lt;%
for(User u : uc.getAllUsers()){%&gt;; &lt;%}%&gt;;
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a> </td>
</tr>
<tr>
<td style="vertical-align: top;">Edit</td>
<td style="vertical-align: top; text-align: center;">Full name </td>
<td style="vertical-align: top; text-align: center;">Username </td>
<td style="vertical-align: top; text-align: center;">Password </td>
<td style="vertical-align: top; text-align: center;">Type </td>
<td style="vertical-align: top; text-align: center;">Status </td>
<td style="vertical-align: top;">Delete </td>
</tr>
<tr>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit"> <input
name="Edit" value="Edit" type="submit"> <input name="Username"
value="&lt;%out.print(u.getUsername());%&gt; type=" hidden="">; </form>
</td>
<td style="vertical-align: top;">
&lt;%out.print(u.getfName());%&gt;; </td>
<td style="vertical-align: top;">
&lt;%out.print(u.getUsername());%&gt;; </td>
<td style="vertical-align: top;">
&lt;%out.print(u.getPassword());%&gt;; </td>
<td style="vertical-align: top;">
&lt;%out.print(u.getType());%&gt;; </td>
<td style="vertical-align: top;">
&lt;%out.print(u.getStatus());%&gt;; </td>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete"> <input
name="Delete" value="Delete" type="submit"> <input name="Username"
value="&lt;%out.print(u.getUsername());%&gt; type=" hidden=""> </form>
</td>
</tr>
</tbody>
</table>
</body>
</html>