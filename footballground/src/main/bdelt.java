package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class bdelt {
	
	

	

	    public String delete(int Booking_ID) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();
	            
	            // Modify the query for the delete operation
	            String query = "DELETE FROM `bookings_table_v-1.1` WHERE Booking_ID   = '" + Booking_ID   + "'";

	            stmt.executeUpdate(query);

	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return "";
	    }
	}



