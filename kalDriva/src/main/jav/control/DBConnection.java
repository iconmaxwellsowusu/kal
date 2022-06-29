package control;
import java.sql.*;

public class DBConnection {

private static Connection conn;
	
	private DBConnection(){}
	
	public static Connection getConnection()
	{
		try
		{
			if(conn==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
			    //conn = DriverManager.getConnection("jdbc:mysql://localhost/caldriva_ctracker","techLineAfrica","T3klyn@frika_2022");
				//conn = DriverManager.getConnection("jdbc:mysql://localhost/caldriva_ctracker","root","root");
				conn = DriverManager.getConnection("jdbc:mysql://s309zj12laz5cqfe:cucljri0ootnd9z6@oliadkuxrl9xdugh.chr7pe7iynqr.eu-west-1.rds.amazonaws.com:3306/t5xgjbx9di7klrps?useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","s309zj12laz5cqfe","cucljri0ootnd9z6");
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return conn;
	}
}
