<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/styles.css">
<link rel="stylesheet" type="text/css" href="resources/css/me.css">
<%-- <%@ include file="header.jsp"%> --%>
</head>
<body>

	<form action="ResetUserPasswordController" method="post">
		New Password: <input type="password" name="p1"><br> <br>
		Conform Password: <input type="password" name="p2"><br> <br>
		<input type="submit" value="Next"> <a href="home.jsp">Cancel</a>
	</form>
</body>
</html>