package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class binsert {

    public String insert(int Booking_ID, int Team_ID, String Start_DATE, String End_DATE, int Fees, String Payment_STATUS ) {        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =
            DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            Statement stmt = con.createStatement();
            String query = "insert into `bookings_table_v-1.1`(Booking_ID ,Team_ID,Start_DATE,End_DATE,Fees,Payment_STATUS) values('" + Booking_ID + "','" + Team_ID + "','" + Start_DATE + "','" + End_DATE + "','" + Fees + "','" + Payment_STATUS + "')";
           
            stmt.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);
            
        }
        return "";
    }
}
