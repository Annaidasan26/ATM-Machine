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
	
	String accnum = (String)session.getAttribute("accnum");
	
	int depositamount = Integer.parseInt(request.getParameter("Deposit"));
	
	Customer_Dao dao = new Customer_Dao();
	
	Customer customer = dao.getCustomer(accnum);
	
	int newAmount = customer.getAmount() + depositamount;
	
	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");
	
	PreparedStatement pst = con.prepareStatement("update customer set amount=? where accnum = ?");
	
	pst.setString(2, accnum);
	pst.setInt(1, newAmount);
	
	pst.executeUpdate();
	
	out.println("Transaction Processed ");
	
	out.println("Total Balance "+newAmount);
	
	%>
	
	<%@ include file = "Continue.jsp" %>

</body>
</html>