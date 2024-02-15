package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Update {



	

	    public String update(int Team_ID, int newEstablished_YEAR, int Captain_ID,String Name) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();

	            // Modify the query for the update operation
	            String query = "UPDATE `teams_table_v-1.1` SET Established_YEAR  = '" + newEstablished_YEAR+ "', Name = '" + Name + "', Captain_ID = '" + Captain_ID + "' WHERE Team_ID = '" + Team_ID+ "'";

	            stmt.executeUpdate(query);

	        } catch (Exception e) {       
	            System.out.println(e);
	        }
	        return "";
	    }
	}


