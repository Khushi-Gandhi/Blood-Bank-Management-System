package Project;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class ConnectionProvider {
	private Connection con;
	public static Connection getCon()  throws SQLException, ClassNotFoundException{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_mng","root","ratTrap@0");
			System.out.println("Database connected!");
			return con;
		}
		catch(Exception e){
			System.out.println("Database not connected!");
			System.out.print(e);
			return null;
		}
	}
}

//import java.sql.*;
//import java.util.*;
//import javax.swing.*;
//
//public class ConnectionProvider extends javax.swing.JFrame{
//	private Connection con;
//
//	public ConnectionProvider() throws SQLException{				
//			
//			try{
//			Class.forName("com.mysql.cj.jdbc.Driver");		//Use either this with classnotfound exception or the other format given below without the classnotfound exception! 
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_mng","root","ratTrap@0");
//		    
////			Statement stm = con.createStatement();
////			String query = "insert into bloodrequest values('Khushi','9340876314','k@gmail.com','O+','pending')";
////			stm.executeUpdate(query);
//			
////			stm.close();
//			con.close();
//		
//			}catch(SQLException e){
//				e.printStackTrace();
//			} catch (ClassNotFoundException e) {
//				// TODO Auto-generated catch block
//				System.out.println("Driver not found !");
//				e.printStackTrace();
//			}
//	}
//}

