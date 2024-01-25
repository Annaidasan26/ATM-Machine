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
	response.setHeader("Cache - Control", "no cache no - store must - revalidate");
		if(session.getAttribute("name")==null){
			response.sendRedirect("index.jsp");
		}
	
	%>
	<%
	String accnum = (String) session.getAttribute("accnum");

	int newAcc = Integer.parseInt(request.getParameter("newacc"));

	String newName = request.getParameter("newname");

	int newPin = Integer.parseInt(request.getParameter("newpin"));

	int newAmount = Integer.parseInt(request.getParameter("newamount"));

	Customer_Dao dao = new Customer_Dao();

	Customer customer = dao.getCustomer(accnum);

	
	if((newAcc>10000000 && 99999999>newAcc)){
		if((newPin>1000 && 9999>newPin)){
			if(newAmount%100 ==0){
				Class.forName("com.mysql.jdbc.Driver");

				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Annaidasan*2606");

				PreparedStatement pst = con.prepareStatement("insert into customer(accnum,name,pin,amount) values(?,?,?,?)");

				pst.setString(2, newName);
				pst.setInt(1, newAcc);
				pst.setInt(4, newAmount);
				pst.setInt(3, newPin);

				pst.executeUpdate();

				out.print("Account Created ");
			}else{
				out.println("Deposit Amount should be in 100's");
			}
		}else{
			out.println("PIN should be in 4 digits");
		}	
	}else{
		out.println("Account Number should be in 8 digits");
	}
	
	%>

	<%@ include file = "Exit.jsp" %>
</body>
</html>