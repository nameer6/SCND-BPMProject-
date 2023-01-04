package main;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class FetchProducts {

	public Products[] getproductInfo() {
		
		 Products[] products = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/eyebuydirect","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT product.ProductID,product.Name, product.ListPrice from product ");
           
			rs.last();
			products = new Products[rs.getRow()];
			rs.beforeFirst();
			
			int i = 0;
			
			while(rs.next()) {
				products[i] = new Products();
	            products[i].setId(rs.getDouble(1));
				products[i].setName(rs.getString(2));
	            products[i].setPrice(rs.getDouble(3));
	            i++;
			}
		
			
			con.close();
			
			} catch(Exception e)
			{
			System.out.println(e);
			}
		return products;
	}
}
