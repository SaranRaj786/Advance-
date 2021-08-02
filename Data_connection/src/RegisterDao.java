import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class RegisterDao {
 
	private String db_url="oracle.jdbc.driver.OracleDriver";
	private String userName ="hr";
	private String passWord="admin";
	private String con ="jdbc:oracle:thin:@localhost:1521:xe";
	
    public Connection getConnection(){
    	Connection con =null;
    	try 
		{
		     con= DriverManager.getConnection(db_url, userName, passWord);
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    	return con;
    }
	
}
