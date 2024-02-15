package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class Delete {
	
	

	

	    public String delete(int Team_ID  ) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();
	            
	            // Modify the query for the delete operation
	            String query = "DELETE FROM `teams_table_v-1.1` WHERE Team_ID   = '" + Team_ID   + "'";

	            stmt.executeUpdate(query);

	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return "";
	    }
	}



