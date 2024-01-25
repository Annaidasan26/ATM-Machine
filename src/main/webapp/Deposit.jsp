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

<form action = "DepositMultiple.jsp" method ="post">
Enter the Amount to Deposit : <input type = "text" name = "Deposit">

<input type = "submit" value = "Deposit">
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