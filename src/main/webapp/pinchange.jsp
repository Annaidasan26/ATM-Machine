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
	response.setHeader("Cache - Control", "no cache no - store must - revalidate");
		if(session.getAttribute("name")==null){
			response.sendRedirect("index.jsp");
		}
	
	%>

<form action = "pinCheck.jsp" method ="post">
Enter the Old PIN : <input type = "password" name = "oldpin"><br>
<br>
Enter the New PIN : <input type = "password" name = "newpin"><br>
<br>
<input type = "submit" value = "Submit">
</form>
<br>
<form action="welcome.jsp" method ="post"><br>
	Click Here to Main Menu<input type = "submit" value = "Main Menu"><br>
</form>
<br>
<form action="index.jsp" method ="post"><br>
	Click Here to Exit<input type = "submit" value = "Exit"><br>
</form>

</body>
</html>