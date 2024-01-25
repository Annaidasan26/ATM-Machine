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

	Welcome to ICICI Bank ${name}
	<br>
	<form action = "withdraw.jsp" method ="post">
	 Click Here to Withdraw : <input type = "submit" value = "Withdraw">
	</form>
	<br>
	<form action = "pinchange.jsp" method ="post">
	 Click Here to PIN Change : <input type = "submit" value = "PIN Change">
	</form>
	<br>
	<form action = "Deposit.jsp" method ="post">
	 Click Here to Deposit : <input type = "submit" value = "Deposit">
	</form>
	<br>
	<form action = "Balance.jsp" method ="post">
	 Click Here for Balance : <input type = "submit" value = "Balance Enquiry">
	</form>
	<br>
	<form action = "index.jsp" method ="post">
	 Click Here to Exit : <input type = "submit" value = "Exit">
	</form>
	
	
	
	

</body>
</html>