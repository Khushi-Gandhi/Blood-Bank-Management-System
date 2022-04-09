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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_mng","root","root");
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



