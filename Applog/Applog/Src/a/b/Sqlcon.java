package a.b;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Sqlcon {
	public String driverName()
	{
		String driverName = "com.microsoft.jdbc.sqlserver.SQLServerDriver";
		return driverName;  
	}
	public String dbURL()
	{
		 String dbURL = "jdbc:sqlserver://localhost:1433;databasename=custtest"; // 1433是端口，"USCSecondhandMarketDB"是数据库名称  
	     return dbURL;  
	}
	public String userName()
	{
		String userName = "sa"; // 用户名  
        return userName;  
	}
	public String userPwd()
	{
		String userPwd = "nbshb.sa2008"; // 密码  
        return userPwd;  
	}
	public void command(String sql) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Connection dbConn = null;  
        try {  
  
            Class.forName(driverName()).newInstance();  
        } catch (Exception ex) {  
 
        }  
        try {  
            dbConn = DriverManager.getConnection(dbURL(), userName(), userPwd());  
            Statement sta=dbConn.createStatement();
	    	sta.executeUpdate(sql);
	    	sta.close();  
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {  
  
            try {  
                if (dbConn != null)  
                    dbConn.close();  
            } catch (SQLException e) {  
                // TODO Auto-generated catch block  
                e.printStackTrace();  
            }  
        }

	    	
	}
}
