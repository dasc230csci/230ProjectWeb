<%@page language="java" import="UI.*" import = "Entity.*, java.util.*"%>
<%
AdminUI AdminUI = (AdminUI)session.getAttribute("adminUi");
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
boolean edited = AdminUI.editUniversity(schoolName, state, location, control, numStudents, percFemale, satV, satM, expenses, finanAid, numApps, admitted, enrolled, acedemicS, socScale, qualOfLifeS, emphases);
if(edited){
	response.sendRedirect("AddUniversity.jsp?Error=1");
}
else{
	response.sendRedirect("AddUniversity.jsp?Error=2");
}
