package main;
import java.sql.*;
public class DeleteProduct {

	public String deleteProductInfo(int ProductID) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/eyebuydirect","root","");
			Statement stmt=con.createStatement();
			stmt.executeUpdate("delete from product where ProductID = '"+ ProductID +"'");

		
			
			con.close();
			
			} catch(Exception e)
			{
			System.out.println(e);
			}
		
		return " ";
	
	}
}
