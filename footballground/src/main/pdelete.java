package main;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class pdelete {
	
	

	

	    public String delete(int Payment_ID ) {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
	            Statement stmt = con.createStatement();
	            
	            // Modify the query for the delete operation
	            String query = "DELETE FROM `payments_table_v-1.1` WHERE Payment_ID  = '" + Payment_ID  + "'";

	            stmt.executeUpdate(query);

	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return "";
	    }
	}



