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
	<form action="ResetUserPasswordController" method="get">
		Previous Password: <input type="password" name="pwd"><br>
		<br> <input type="submit" value="Next"> <a
			href="home.jsp">Cancel</a>

	</form>
	<h2><%=request.getAttribute("errorMessage")%></h2>
</body>
</html>