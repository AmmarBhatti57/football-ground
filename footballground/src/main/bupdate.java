

	package main;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.Statement;

	public class bupdate {



		

		    public String update(int Booking_ID, int newTeam_ID, String newStart_DATE, String newEnd_DATE, int newFees, String newPayment_STATUS ) {
		        try {
		            Class.forName("com.mysql.jdbc.Driver");
		            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
		            Statement stmt = con.createStatement();

		            // Modify the query for the update operation
		            String query = "UPDATE `bookings_table_v-1.1` SET Payment_STATUS = '" + newPayment_STATUS+ "', Team_ID = '" + newTeam_ID + "', Start_DATE = '" + newStart_DATE + "', Start_DATE = '" + newStart_DATE + "', End_DATE = '" + newEnd_DATE + "', Fees = '" + newFees + "' WHERE Booking_ID = '" + Booking_ID+ "'";
		            
		            stmt.executeUpdate(query);

		        } catch (Exception e) {
		            System.out.println(e);
		        }
		        return "";
		    }
		}
