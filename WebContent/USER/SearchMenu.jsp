<%@ page language="java" import="Controller.*, java.util.*, UI.*, Entity.*"%>
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>SearchMenu</title>
<%
String error = request.getParameter("Error");
if(error != null && error.equals("1")){
	out.println("School doesn't exist with matching with criteria");
	out.println("<br>");
}
%>
</head>
<body>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; <big><big>Search Menu</big></big><br>
<form method="post" action="SearchResult.jsp" name="SearchForm">
<table style="text-align: left; height: 622px; width: 1108px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 350px;">by SCHOOL NAME<br>
</td>
<td style="vertical-align: top; width: 740px;">contains <input
name="schoolName"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by STATE<br>
</td>
<td style="vertical-align: top; width: 740px;">conatins <input
name="state"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by LOCATION<br>
</td>
<td style="vertical-align: top; width: 740px;"><input
name="location"> (SUBURBAN, URBAN, SMALL-CITY or -1 for UNKNOWN)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by CONTROL<br>
</td>
<td style="vertical-align: top; width: 740px;"><input
name="control"> (PRIVATE, STATE, CITY or -1 for UNKNOWN)<br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by NUMBER OF
STUDENTS<br>
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="numOfStudentMin"> and <input name="numOfStudentMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by % FEMALE<br>
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="femaleRatioMin"> and <input name="femaleRatioMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by SAT VERBAL<br>
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="satVerbalMin"> and <input name="satVerbalMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by SAT MATH
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="satMathMin"> and <input name="satMathMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by EXPENSES
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="expensesMin"> and <input name="expensesMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by % FINANCIAL
AID
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="perFinanAidMin"> and <input name="perFinanAidMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by NUMBER OF
APPLICANTS
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="totNumOfApplicantMin"> and <input name="totNumOfApplicantMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by % ADMITTED
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="perAdmittedMin"> and <input name="perAdmittedMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by % ENROLLED
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="perEnrolledMin"> and <input name="perEnrolledMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by ACADEMIC
SCALE(1-5)
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="academicScaleMin"> and <input name="academicScaleMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by SOCIAL
SCALE(1-5)
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="socialScaleMin"> and <input name="socialScaleMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by QUALIFY OF
LIFE SCALE(1-5)
</td>
<td style="vertical-align: top; width: 740px;">between <input
name="qualOfLifeScaleMin"> and <input name="qualOfLifeScaleMax"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 350px;">by EMPHASES
</td>
<td style="vertical-align: top; width: 740px;">contains either<br>
<input name="emphases1"><br>
<input name="emphases2"><br>
<input name="emphases3"><br>
<input name="emphases4"><br>
<input name="emphases5"><br>
</td>
</tr>
</tbody>
</table>
<br>
<input value="Search For Schools" name="SearchButton" type="submit">&nbsp;
<input name="resetButton" value="Reset Form" type="reset"><br>
</form>
<br>
<br>
</body>
</html>