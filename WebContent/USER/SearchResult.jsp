<%@ page language="java" import="Controller.*, java.util.*, UI.*, Entity.*"%>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
ArrayList<String> criteria = new ArrayList<String>();
criteria.add(request.getParameter("schoolName"));
criteria.add(request.getParameter("state"));
criteria.add(request.getParameter("location"));
criteria.add(request.getParameter("control"));
criteria.add(request.getParameter("numOfStudentMin"));
criteria.add(request.getParameter("numOfStudentMax"));
criteria.add(request.getParameter("femaleRatioMin"));
criteria.add(request.getParameter("femaleRatioMax"));
criteria.add(request.getParameter("satVerbalMin"));
criteria.add(request.getParameter("satVerbalMax"));
criteria.add(request.getParameter("satMathMin"));
criteria.add(request.getParameter("satMathMax"));
criteria.add(request.getParameter("expensesMin"));
criteria.add(request.getParameter("expensesMax"));
criteria.add(request.getParameter("perFinanAidMin"));
criteria.add(request.getParameter("perFinanAidMax"));
criteria.add(request.getParameter("totNumOfApplicantMin"));
criteria.add(request.getParameter("totNumOfApplicantMax"));
criteria.add(request.getParameter("perAdmittedMin"));
criteria.add(request.getParameter("perAdmittedMax"));
criteria.add(request.getParameter("perEnrolledMin"));
criteria.add(request.getParameter("perEnrolledMax"));
criteria.add(request.getParameter("academicScaleMin"));
criteria.add(request.getParameter("academicScaleMax"));
criteria.add(request.getParameter("socialScaleMin"));
criteria.add(request.getParameter("socialScaleMax"));
criteria.add(request.getParameter("qualOfLifeScaleMin"));
criteria.add(request.getParameter("qualOfLifeScaleMax"));
criteria.add(request.getParameter("emphases1"));
criteria.add(request.getParameter("emphases2"));
criteria.add(request.getParameter("emphases3"));
criteria.add(request.getParameter("emphases4"));
criteria.add(request.getParameter("emphases5"));
ArrayList<University> searched = new ArrayList<University>();
searched = userUi.search(criteria);
if(searched.isEmpty()){
	response.sendRedirect("SearchMenu.jsp?Error=1");
}
%>
<html>
<head>
<title></title>
</head>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<td colspan="8" rowspan="1" style="vertical-align: top;">School
List</td>
</tr>
<%for(University univ : searched){%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="SaveSchool.jsp" name="Save"><input
name="Save" value="Save" type="submit"><input name="schoolName"
value="<%out.print(univ.getSchoolName());%>" type="hidden"></form>
</td>
<td style="vertical-align: top;"><%out.print(univ.getSchoolName());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchool.jsp" name="View"> <input
name="View" value="View" type="submit"><input name="schoolName"
value="<%out.print(univ.getSchoolName());%>" type="hidden"></form>
</td>
</tr>
<%}%>
</tbody>
</table>
<br>
<br>
</body>
</html>
