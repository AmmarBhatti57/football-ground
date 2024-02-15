

	package main;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.Statement;

	public class pupdate {



		

		    public String update(int Payment_ID, int newBooking_ID, int newAmount, String newDate) {
		        try {
		            Class.forName("com.mysql.jdbc.Driver");
		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
		            Statement stmt = con.createStatement();

		            // Modify the query for the update operation
		            String query = "UPDATE `payments_table_v-1.1` SET Booking_ID = '" + newBooking_ID+ "', Amount = '" + newAmount + "', Date = '" + newDate + "' WHERE Payment_ID = '" + Payment_ID+ "'";

		            stmt.executeUpdate(query);

		        } catch (Exception e) {
		            System.out.println(e);
		        }
		        return "";
		    }
		}
