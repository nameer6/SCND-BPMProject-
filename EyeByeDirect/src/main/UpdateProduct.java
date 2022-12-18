package main;
import java.sql.*;
public class UpdateProduct {

	public String updateProductInfo(int ProductID, String Name , String Description , String Type , int CategoryID , float Size , float Weight , 
			String Color , int StandardCost , int ListPrice ) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/eyebuydirect","root","");
			Statement stmt=con.createStatement();
			stmt.executeUpdate("update product set Name = '"+ Name +"', Description = '"+ Description+"'"
					+ ", Type = '"+Type +"', CategoryID = '"+ CategoryID+"', 	Size = '"+ Size+"'"
					+ ", Weight = '"+ Weight+"', Color = '"+ Color+"', StandardCost = '"+ StandardCost+"', ListPrice = '"+ ListPrice+"' "
							+ " where ProductID = '"+ ProductID+"' ");

		
			con.close();
			
			} catch(Exception e)
			{
			System.out.println(e);
			}
		
		return " ";
	
	}
}
