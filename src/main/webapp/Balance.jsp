<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.atm.Customer" %>
<%@ page import="com.atm.Customer_Dao" %>
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

<%
	
	String accnum = (String)session.getAttribute("accnum");
	
	Customer_Dao dao = new Customer_Dao();
	
	Customer customer = dao.getCustomer(accnum);
	
	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");
	
	out.println("Your Balance is "+customer.getAmount());
	
	%>
	
	<%@ include file = "Continue.jsp" %>

</body>
</html>