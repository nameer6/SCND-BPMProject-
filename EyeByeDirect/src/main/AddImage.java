package main;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

public class AddImage {

	public static void main (String[] args) {
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/eyebuydirect","root","");
			
			String query = "insert into product(Photo) values(?)";
			
			PreparedStatement pstmt = con.prepareStatement(query);
			
			JFileChooser jfc = new JFileChooser();
			jfc.showOpenDialog(null);
			File file = jfc.getSelectedFile();
			
		   FileInputStream fis = new FileInputStream(file);
		   pstmt.setInt(1, 1);
		   pstmt.setBinaryStream(1,fis,fis.available());
		   pstmt.executeUpdate();
		   
		   JOptionPane.showMessageDialog(null, "Image Successfully Added");
		   
			
		} catch(Exception e)
		{
		System.out.println(e);
		}
	}
}
