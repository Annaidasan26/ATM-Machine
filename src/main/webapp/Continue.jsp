<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("name")==null){
			response.sendRedirect("index.jsp");
		}
	
	%>

<form action="welcome.jsp">
	Click Here to Continue<input type = "submit" value = "Continue"><br>
</form>
<br>
<form action="index.jsp">
	Click Here to Exit<input type = "submit" value = "Exit"><br>
</form>
<br>
</body>
</html>