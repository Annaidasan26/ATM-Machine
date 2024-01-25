package com.atm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Customer_Dao {

	public Customer getCustomer(String accnum) throws ClassNotFoundException, SQLException {
		
		
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Annaidasan*2606");
		
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery("select * from customer where accnum="+accnum);
		
		if(rs.next())
			return new Customer(rs.getString("accnum"),rs.getString("name"),rs.getInt("pin"),rs.getInt("amount"));
		
		
		
		
		
		
		
		
		
		return null;
	}

}
