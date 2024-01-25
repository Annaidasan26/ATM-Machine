<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> Welcome to ICICI Bank</h1>

<form action='login' method ="post">

	Enter your Account Number : <input type='text' name = 'accnum'><br>
	<br>
	Enter your Password : <input type = 'password' name = 'pin'><br>
	<br>
	<input type = 'submit' value = 'Submit'><br>
</form>
<br>
<form action = 'form.jsp' method = 'post'><br>
	
	Create New Account <input type = 'submit' value = 'Create Account'><br>

</form>

</body>
</html>