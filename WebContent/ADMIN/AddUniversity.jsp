<%@ page language="java" import="Controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<%String error = request.getParameter("Error");
	if(error !=null && error.equals("1")){
		out.println("Add Failed");
	}
%>
<title>addUniversity</title>
</head>
<body>
<form method="post" action="AddUniversity_action.jsp" name="AddUniversity">
<br>
	<table style="text-align: left; height: 541px; width: 959px;" border="1"
	cellpadding="2" cellspacing="2">
	<tbody>
	<tr>
		<td style="vertical-align: top; width: 723px;">SCHOOL<br>
		</td>
		
		<td style="vertical-align: top; width: 218px;"><input
		name="schoolInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">STATE<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="stateInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">LOCATION<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="locationInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">CONTROL<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="controlInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">NUMBER OF STUDENTS<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="numStudentsInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">% FEMALE<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="percFemaleInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">SAT VERBAL<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="satvInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">SAT MATH<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="satmInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">EXPENSES<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="expensesInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">% FINANCIAL AID<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="finanAidInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">NUMBER OF
		APPLICANTS<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="numAppsInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">% ADMITTED<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="admitInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">% ENROLLED<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="enrolInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">ACADEMIC SCALE<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="acScaleInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">SOCIAL SCALE<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="socScaleInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">QUALITY OF LIFE
		SCALE<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="qualScaleInput"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top; width: 723px;">EMPHASES<br>
		</td>
		<td style="vertical-align: top; width: 218px;"><input
		name="emphases1"><input name="emphases2"><input name="emphases3"><input
		name="emphases4"><input name="emphases5"><br>
		</td>
	</tr>
	<tr>
		<td style="vertical-align: top;"><input value="Add School"
		name="Add" type="submit"></td>
		<td style="vertical-align: top;"><input value="Cancel Changes"
		name="Reset" type="reset"></td>
	</tr>
	</tbody>
	</table>
&nbsp;<br>
<br>
</form>
</body>
</html>