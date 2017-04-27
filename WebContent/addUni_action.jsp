<%@page language="java" import="Controller.*, java.util.*"%>

<%
	boolean canCreate = true;
	AdminFuncController adminC = new AdminFuncController();
	ArrayList<String> schoolInfo = new ArrayList<String>();
	String schoolName = request.getParameter("schoolInput");
	String state = request.getParameter("stateInput");
	String location = request.getParameter("locationInput");
	String control = request.getParameter("controlInput");
	String numStudents = request.getParameter("numStudentsInput");
	String percFemale = request.getParameter("percFemaleInput");
	String satV = request.getParameter("satvInput");
	String satM = request.getParameter("satmInput");
	String expenses = request.getParameter("expensesInput");
	String finanAid = request.getParameter("finanAidInput");
	String numApps = request.getParameter("numAppsInput");
	String admitted = request.getParameter("admitInput");
	String enrolled = request.getParameter("enrolInput");
	String acedemicS = request.getParameter("acScaleInput");
	String qualOfLifeS = request.getParameter("qualScaleInput");
	String socScale = request.getParameter("socScaleInput");
	String emphases1 = request.getParameter("emphases1");
	String emphases2 = request.getParameter("emphases2");
	String emphases3 = request.getParameter("emphases3");
	String emphases4 = request.getParameter("emphases4");
	ArrayList<String> emphases = new ArrayList<String>();
	emphases.add(0, emphases1);
	emphases.add(1, emphases2);
	emphases.add(2, emphases3);
	emphases.add(3, emphases4);
	schoolInfo.add(0, schoolName);
	schoolInfo.add(1, state);
	schoolInfo.add(2, location);
	schoolInfo.add(3, control);
	schoolInfo.add(4, numStudents);
	schoolInfo.add(5, percFemale);
	schoolInfo.add(6, satV);
	schoolInfo.add(7, satM);
	schoolInfo.add(8, expenses);
	schoolInfo.add(9, finanAid);
	schoolInfo.add(10, numApps);
	schoolInfo.add(11, admitted);
	schoolInfo.add(12, enrolled);
	schoolInfo.add(13, acedemicS);
	schoolInfo.add(14, socScale);
	schoolInfo.add(15, qualOfLifeS);
	schoolInfo.addAll(16, emphases);
	
	for(Entity.University Uni: adminC.getUniversityList()){
		if(Uni.getSchoolName().equals(schoolName)){
			canCreate = false;
			response.sendRedirect("AddUniversity.jsp?Error=1");
		}
	}
	if(canCreate){
		boolean added = adminC.addUniversity(schoolInfo);
		if(added){
		response.sendRedirect("AddUniversity.jsp?Error=2");
		}
	}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>