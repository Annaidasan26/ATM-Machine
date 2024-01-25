package com.atm;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		
		String accnum = req.getParameter("accnum");
		
		int pin = Integer.parseInt(req.getParameter("pin"));
		
		Customer_Dao dao = new Customer_Dao();
		
		Customer customer = null;
		try {
			customer = dao.getCustomer(accnum);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(customer != null && customer.getPin() == pin) {
			
			HttpSession session = req.getSession();
			
			session.setAttribute("name", customer.getName());
			session.setAttribute("accnum", customer.getAccnum());
			res.sendRedirect("welcome.jsp");
		}else {
			res.sendRedirect("error.jsp");
		}
		
		
		
		
	}
}
