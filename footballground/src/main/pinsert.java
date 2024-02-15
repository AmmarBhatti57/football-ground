package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class pinsert {

    public String insert(int Payment_ID, int Booking_ID, int Amount, String date) {        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =
            DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            Statement stmt = con.createStatement();
            String query = "insert into `payments_table_v-1.1`(Payment_ID ,Booking_ID,Amount,Date) values('" + Payment_ID + "','" + Booking_ID + "','" + Amount + "','" + date + "')";
            
            stmt.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);
            
        }
        return "";
    }
}