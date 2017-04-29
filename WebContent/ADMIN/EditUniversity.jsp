<%@page language="java" import="UI.*, Entity.*, Controller.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>edit/viewUniversity</title>
<%String error = request.getParameter("Error");
if(error != null && error.equals("1")){
	out.println("Error in editing the school");
}
%> 
</head>
<body>
<%
	AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
	String schoolName = request.getParameter("schoolName");
    out.println("Edit/View University : " + schoolName);
    ArrayList<University> list = adminUi.viewUniversityList();
    University theUni = null;
    for(int i =0; i < list.size(); i++){
    	if(list.get(i).getSchoolName().equals(schoolName)){
    		theUni = list.get(i);
    	}
    }
%>
<form method="post" action="EditUniversity_action.jsp" name="EditUniversity">
<table style="text-align: left; height: 541px; width: 959px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 723px;">SCHOOL<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getSchoolName());%>"
name="schoolInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">STATE<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getState()); %>"
name="stateInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">LOCATION<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getLocation()); %>"
name="locationInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">CONTROL<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getControl()); %>"
name="controlInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">NUMBER OF STUDENTS<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getNumOfEnrolled()); %>"
name="numStudentsInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">% FEMALE<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getFemaleRatio()); %>"
name="percFemaleInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">SAT VERBAL<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getSatVerbal()); %>"
name="satvInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">SAT MATH<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getSatMath()); %>"
name="satmInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">EXPENSES<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getExpenses()); %>"
name="expensesInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getPerFinanAid()); %>"
name="finanAidInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">NUMBER OF
APPLICANTS<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getTotNumOfApplicant()); %>"
name="numAppsInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">% ADMITTED<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getPerAdmitted()); %>"
name="admitInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">% ENROLLED<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getPerEnrolled()); %>"
name="enrolInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">ACADEMIC SCALE<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getAcademicsScale()); %>"
name="acScaleInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">SOCIAL SCALE<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getSocialScale()); %>"
name="socScaleInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">QUALITY OF LIFE
SCALE<br>
</td>
<td style="vertical-align: top; width: 218px;"><input value="<%out.print(theUni.getQualOfLifeScale()); %>"
name="qualScaleInput"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 723px;">EMPHASES<br>
</td>
<td style="vertical-align: top; width: 218px;">
<input value="<%if(theUni.getEmphases().size()>0){out.print(theUni.getEmphases().get(0));}%>" name="emphases1">
<input value="<%if(theUni.getEmphases().size()>1){out.print(theUni.getEmphases().get(1));}%>" name="emphases2">
<input value="<%if(theUni.getEmphases().size()>2){out.print(theUni.getEmphases().get(2));}%>" name="emphases3">
<input value="<%if(theUni.getEmphases().size()>3){out.print(theUni.getEmphases().get(3));}%>" name="emphases4">
<input value="<%if(theUni.getEmphases().size()>4){out.print(theUni.getEmphases().get(4));}%>" name="emphases5"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Edit the school"
name="Edit" type="submit"></td>
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
