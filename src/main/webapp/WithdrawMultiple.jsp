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
	
	int withAmount = Integer.parseInt(request.getParameter("withdraw"));
	
	Customer_Dao dao = new Customer_Dao();
	
	Customer customer = dao.getCustomer(accnum);
	
	if(withAmount<customer.getAmount()){
		if(withAmount%100 == 0){
			int newAmount = customer.getAmount() - withAmount;
			
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");
			
			PreparedStatement pst = con.prepareStatement("update customer set amount=? where accnum = ?");
			
			pst.setString(2, accnum);
			pst.setInt(1, newAmount);
			
			pst.executeUpdate();
			
			out.print("Transaction Processed ");
			
			out.print("Total Balance "+newAmount);
			
		}else{
			out.println("Withdraw Amount should be in 100's");
		}
	}else{
		out.println("Insufficient Balance");
	}
	
	%>
<br>	
	<%@ include file = "Continue.jsp" %>



</body>
</html>