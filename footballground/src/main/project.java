package main;
import java.sql.*;
public class project {

	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =
			DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from `bookings_table_v-1.1`");

			while(rs.next())
			{
			System.out.println("Team-ID " + rs.getInt(1) + " Payment-STATUS " + rs.getString(2));
			}
			con.close();
			} catch(Exception e)
			{
			System.out.println(e);
			}

	}

}
