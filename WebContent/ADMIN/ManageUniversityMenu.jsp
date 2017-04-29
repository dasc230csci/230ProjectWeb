<%@page language="java" import="UI.*, Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<html>
<head>
<title></title>
</head>
<body>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
%>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="17" rowspan="1" style="vertical-align: top;"><a
href="AddUniversity.jsp">Add a new University</a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;">School
</td>
<td style="vertical-align: top; text-align: center;">State
</td>
<td style="vertical-align: top; text-align: center;">Location
</td>
<td style="vertical-align: top; text-align: center;">Control
</td>
<td style="vertical-align: top; text-align: center;"># of Student
</td>
<td style="vertical-align: top; text-align: center;">% Females
</td>
<td style="vertical-align: top; text-align: center;">SAT Verbal
</td>
<td style="vertical-align: top; text-align: center;">SAT Math
</td>
<td style="vertical-align: top; text-align: center;">Expenses
</td>
<td style="vertical-align: top; text-align: center;">% with Financial Aid
</td>
<td style="vertical-align: top; text-align: center;"># of Applicants
</td>
<td style="vertical-align: top; text-align: center;">% Admitted
</td>
<td style="vertical-align: top; text-align: center;">% Enrolled
</td>
<td style="vertical-align: top; text-align: center;">Academic Scale
</td>
<td style="vertical-align: top; text-align: center;">Social Scale
</td>
<td style="vertical-align: top; text-align: center;">Quality of Life Scale
</td>
<td style="vertical-align: top; text-align: center;">
</td>
</tr>

<%
for(University u : adminUi.viewUniversityList()){%>
<tr>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSchoolName());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getState());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getLocation());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getControl());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getNumOfEnrolled());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getFemaleRatio());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSatVerbal());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSatMath());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getExpenses());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerFinanAid());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getTotNumOfApplicant());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerAdmitted());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerEnrolled());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getAcademicsScale());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSocialScale());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getQualOfLifeScale());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="EditUniversity.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="schoolName" value="<%out.print(u.getSchoolName());%>" type="hidden">
</form>
</td>
<td style="vertical-align: top;">
<form method="post" action="DeleteUniversity.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="schoolName" value="<%out.print(u.getSchoolName());%>" type="hidden">
</form>
</td>
</tr>
<%}%>
</tbody>
</table>
</body>
</html>