package loginDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import control.DBConnection;
public class loginDao {
	String query = "select * from login where name=? and password=? and status='Active'";

	public boolean check(String name,String password) {
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, name);
			st.setString(2, password);
			
			ResultSet rs = st.executeQuery(); 
			System.out.println();
			if(rs.next()) {
				
				return true;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

}
