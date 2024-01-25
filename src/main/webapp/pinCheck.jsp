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

	int oldPin = Integer.parseInt(request.getParameter("oldpin"));

	int newPin = Integer.parseInt(request.getParameter("newpin"));

	Customer_Dao dao = new Customer_Dao();

	Customer customer = dao.getCustomer(accnum);
	if(oldPin>1000 && oldPin<9999){
		if(newPin>1000 && newPin<9999){
	if (newPin != customer.getPin()) {
		if (oldPin == customer.getPin()) {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");

			PreparedStatement pst = con.prepareStatement("update customer set pin=? where accnum = ?");

			pst.setString(2, accnum);
			pst.setInt(1, newPin);

			pst.executeUpdate();

			out.print("Pin Number is Changed");
		} else {
			out.println("PIN Number is Invalid");
		}
	} else {
		out.println("It's the Same Old Pin Number, Please Choose a Different One ");
	}
	}else{
		out.println("PIN Number should be in 4 digits");
	}
	}else{
		out.println("PIN Number should be in 4 digits");
	}

	%>

<%@ include file = "Exit.jsp" %>

</body>
</html>