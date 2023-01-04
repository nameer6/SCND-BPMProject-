package main;

import java.sql.*;

public class ReceiveOrder {

	public String addOrderInfo(int CustomerID, int Orderqty,int UnitPrice, int productid  ) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/eyebuydirect","root","");
			Statement stmt=con.createStatement();
			stmt.executeUpdate("insert into orderdetail(CustomerID, OrderQty , UnitPrice , ProductID ) "
					+ "values('"+CustomerID+"','"+Orderqty+"' , '"+UnitPrice+"' , '"+productid+"');");

		
			con.close();
			
			} catch(Exception e)
			{
			System.out.println(e);
			}
		
		return " ";
	
	}
}
