<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet" type="text/css" href="resources/css/me.css">
<link rel="stylesheet" href="resources/customcss/RStyle.css">
<script src="resources/js/customValidation.js"></script>
<title>Insert title here</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<form action="StudentController" method="post"
		enctype="multipart/form-data">
		<header>Please Enter Your Details</header>
		<br> <input type="hidden" name="id" value="${student.id }"
			readonly="readonly" />

		<div class="newstyle">
			<label>Student Name: </label> <input type="text" name="sName"
				value="${student.studentName }" onkeypress="return alphabetsOnly(event)"/>
				<div id="name_error" style="color: red"></div>
		</div>


		<div class="newstyle">
			<label>College Name: </label> <input type="text" name="cName"
				value="${student.collegeName }" pattern='[A-Za-z\\s]*'/>
		</div>
		<div class="newstyle">
			<label>Email: </label> <input type="email" name="email"
				value="${student.email }" />
		</div>

		<div class="newstyle">
			<label>Date of Birth: </label> <input type="date" name="dob"
				value="${student.dob }" />
		</div>

		<div class="newstyle">
			<label>Roll: </label> <input type="number" name="roll"
				value="${student.roll }" />

		</div>
		<div class="newstyle">
			<label>Gender:</label> Male: <input type="radio" name="gender"
				id="gender" value="male"
				${student.gender=='male'?'checked':'' or student.gender == null?'checked':''}>
			Female: <input type="radio" name="gender" id="gender" value="female"
				${student.gender=='female'?'checked':''}>
		</div>

		<div class="newstyle">
			<c:set var="depatments" value="${fn:split(student.departments, '/')}" />
			<input type="checkbox" name="C1" value="Computer"
				${depatments[0]=='Computer'?'checked':''}>Computer <input
				type="checkbox" name="C1" value="Electrical"
				${depatments[1]=='Electrical'?'checked':''}>Electrical <input
				type="checkbox" name="C1" value="IT"
				${depatments[2]=='IT'?'checked':''}>IT
		</div>

		<div class="newstyle">
			<label>Subjects: </label> <select name="sCombo">
				<option value="Java" ${student.subject=='Java'?'selected':''}>JAVA</option>
				<option value="php" ${student.subject=='php'?'selected':''}>PHP</option>
				<option value=".Net" ${student.subject=='.Net'?'selected':''}>.NET</option>
				<option value="android" ${student.subject=='android'?'selected':''}>ANDROID</option>
				<option value="c++" ${student.subject=='c++'?'selected':''}>C++</option>
				<option value="swift" ${student.subject=='swift'?'selected':''}>SWIFT</option>
				<option value="javascript"
					${student.subject=='javascript'?'selected':''}>JAVASCRIPT</option>
			</select>

		</div>
		<div class="newstyle">
			Choose Image:<input type="file" name="photo" size="10"
				required="required" /><br> <br>
		</div>

		<div class="newstyle">
			<button value="register" type="submit">Register</button>
			<button value="clear" type="reset">Clear</button>
		</div>

	</form>
</body>
</html>