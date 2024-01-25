<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.atm.Customer"%>
<%@ page import="com.atm.Customer_Dao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String accnum = (String) session.getAttribute("accnum");

	String newAcc = request.getParameter("newacc");

	String newName = request.getParameter("newname");

	int newPin = Integer.parseInt(request.getParameter("newpin"));

	int newAmount = Integer.parseInt(request.getParameter("newamount"));

	Customer_Dao dao = new Customer_Dao();

	Customer customer = dao.getCustomer(accnum);

	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");

	PreparedStatement pst = con.prepareStatement("insert into customer(accnum,name,pin,amount) values(?,?,?,?)");

	pst.setString(2, newName);
	pst.setString(1, newAcc);
	pst.setInt(4, newAmount);
	pst.setInt(3, newPin);

	pst.executeUpdate();

	out.print("Account Created ");
	%>
	
	<%@ include file = "Exit.jsp" %>

</body>
</html>