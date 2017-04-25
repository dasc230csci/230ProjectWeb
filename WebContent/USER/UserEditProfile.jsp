<%@page language="java" import="UI.*" import = "Entity.*"%>
<% UserUI uUI = (UserUI)session.getAttribute("userUi");
	String error= request.getParameter("Error");
	if(error != null && error.equals("-1")){
		out.println("please input value in the required fields");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {font-family: Verdana,sans-serif;margin:0}
.slide {display:none}
.slideshow-container {
  max-width: 640px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 90%;
  width: auto;
  padding: 0;
  color: white;
  font-weight: bold;
  font-size: 18px;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2s;
}

@-webkit-keyframes fade {
  from {opacity: .2} 
  to {opacity: 1}
}
</style>
<title>Edit User Profile</title>
</head>
<body>
<div class="slideshow-container">

<div class="slide fade">
  <img src="http://www.collegerank.net/wp-content/uploads/2015/08/best-college-quads-Northwestern-University-.jpg" style="width:100%">
  <div class="text">Northwestern University</div>
</div>

<div class="slide fade">
  <img src="http://www.collegerank.net/wp-content/uploads/2015/08/best-college-quads-Connecticut-College.jpg" style="width:100%">
  <div class="text">Connecticut College</div>
</div>

<div class="slide fade">
  <img src="http://www.collegerank.net/wp-content/uploads/2015/08/university-of-washington-quad.jpg" style="width:100%">
  <div class="text">Washington University</div>
</div>

<a class="prev" onclick="nextSlides()">&#10094;</a>
<a class="next" onclick="prevSlides()">&#10095;</a>

</div>
<br>

<form method="post" action="Edit_action.jsp" name="editInfo">
<table
style="text-align: left; width: 1318px; height: 154px; margin-left: auto; margin-right: auto;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 1000px;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName"
value=<%out.print(uUI.viewProfile().getFirstName());%> ><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName"
value=<%out.print(uUI.viewProfile().getLastName());%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input disabled="disabled"
name="Username" value=<%out.print(uUI.getUsername());%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"
value=<%out.print(uUI.viewProfile().getPassword());%>><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input disabled="disabled"
name="Type" value="u"><br>
</td>
</tr>
</tbody>
</table>
<span style="font-family: &quot;Sans&quot;;"><br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Submit" value="Edit User" type="submit">&nbsp;&nbsp;&nbsp;
<input name="Reset" value="Reset" type="reset"></span>&nbsp; <br>
</form>
<script>
var slideIndex = 1;
showSlides(slideIndex);

function nextSlides() {
  slideIndex++;
  showSlides(slideIndex);
}

function prevSlides(){
	slideIndex--;
	showSlides(slideIndex);
}

function showSlides(index) {
  var i;
  var slides = document.getElementsByClassName("slide");
  if (index > slides.length) {slideIndex = 1}    
  if (index < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
}
</script>
</body>
</html>