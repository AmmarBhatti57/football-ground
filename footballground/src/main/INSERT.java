package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class INSERT {

    public String insert(int Team_ID, String Name, String Established_YEAR, int Captain_ID ) {        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =
            DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            Statement stmt = con.createStatement();
            String query = "insert into `teams_table_v-1.1`(Team_ID ,Name,Established_YEAR,Captain_ID) values('" + Team_ID + "','" + Name + "','" + Established_YEAR + "','" + Captain_ID + "')";
            
            stmt.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);
            
        }
        return "";
    }
}