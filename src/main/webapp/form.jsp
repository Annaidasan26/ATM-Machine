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
<h1> Create New Account</h1>
<form action = "NewAcc.jsp" method ="post">
Enter your Name : <input type = "text" name = "newname" ><br>
<br>
Enter your Account Number (Should be in 8 digits) : <input type = "text" name = "newacc"><br>
<br>
Enter your PIN (Should be in 4 digits): <input type = "password" name = "newpin"><br>
<br>
Enter the Amount to Deposit : <input type = "text" name = "newamount"><br>
<br>
<input type = "submit" value = "Create Account">
</form>
<br>
<form action="index.jsp" method ="post">
	Click Here to Exit<input type = "submit" value = "Exit"><br>
</form>

</body>
</html>