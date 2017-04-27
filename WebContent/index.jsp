<html>
<style>
body {font-family: Verdana,sans-serif;margin:0; background-color:#444444}
#banner{
  width:100%;
  background-image:url(http://i.imgur.com/TsQQMTp.png);
  background-size:880px 680px;
  background-repeat:no-repeat;
  background-position:60% 46%;
  height: 99px;
  background-color: #333333;
}
#logginblock{
	width: 400px;
	height: 250px;
	background-color: white;
	background-position:center;
	margin:auto;
	box-shadow: 10px 10px 5px #333333;
}
</style>
<head>
<title>Login Form</title>
<%
String error = request.getParameter("Error");
if(error != null && error.equals("1")){
	out.println("Password is invalid");
}
else if(error != null && error.equals("2")){
	out.println("Username or Password is invalid");
}
else if(error != null && error.equals("3")){
	out.println("Error with accessing database");
}
else if(error != null && error.equals("-4")){
	out.println("Must be logged in to access.");
}
%>
</head>
<body>
<div id="banner">
</div>
<br>
<div id="logginblock">
<center>
<h1 >Login form</h1>
</center>
<center>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 200px; height: 150px;"
border="0">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<tr>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="Password" type="password"> </td>
</tr>
<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;
<input value="Reset"name="Reset" type="reset">
</td>
</tr>
</tbody>
</table>
</center>
<br>
</form>
</div>
<br>
</body>
</html>