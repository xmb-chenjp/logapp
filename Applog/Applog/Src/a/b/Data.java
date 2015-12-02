package a.b;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import com.yonyou.uap.um.context.util.UmContextUtil;
import com.yonyou.um.json.JSONArray;

public class Data {
	Sqlcon sc=new Sqlcon();
	public String insertdata(String args) throws JSONException, InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		JSONObject json = new JSONObject(args);
		Map<String, Object> paramsMap = UmContextUtil.transJsonToMap(json);
		JSONObject jsonObj = new JSONObject(args);
		Map jsonmap = UmContextUtil.transJsonToMap(jsonObj);
		
		JSONObject mydata = new JSONObject(json.getString("mydata"));
		String name = mydata.getString("personid");
		String code = mydata.getString("personname");
		String sql ="insert into person(personname,personid) values('"+code+"','"+name+"')";
		sc.command(sql);
		return "{data:保存成功！}";
	}
	public String updatedata(String args) throws JSONException, InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		JSONObject json = new JSONObject(args);
		Map<String, Object> paramsMap = UmContextUtil.transJsonToMap(json);
		JSONObject jsonObj = new JSONObject(args);
		Map jsonmap = UmContextUtil.transJsonToMap(jsonObj);
		
		JSONObject mydata = new JSONObject(json.getString("mydata"));
		String name = mydata.getString("personid");
		String code = mydata.getString("personname");
		String sql ="update person set personname='"+code+"' where personid='"+name+"'";
		sc.command(sql);
		return "{data:保存成功！}";
	}
	public String deletedata(String args) throws JSONException, InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		JSONObject json = new JSONObject(args);
		Map<String, Object> paramsMap = UmContextUtil.transJsonToMap(json);
		JSONObject jsonObj = new JSONObject(args);
		Map jsonmap = UmContextUtil.transJsonToMap(jsonObj);
		
		JSONObject mydata = new JSONObject(json.getString("mydata"));
		String name = mydata.getString("personid");
		String code = mydata.getString("personname");
		String sql ="delete from  person where personid='"+name+"'";
		sc.command(sql);
		return "{data:保存成功！}";
	}
	
	public String selectdata(String args) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException, JSONException
	{
		JSONArray res = new JSONArray();
		Connection dbConn = null;  
        try {  
  
            Class.forName(sc.driverName()).newInstance();  
        } catch (Exception ex) {  
 
        }  
        try {  
            dbConn = DriverManager.getConnection(sc.dbURL(), sc.userName(), sc.userPwd());  
            Statement sta=dbConn.createStatement();
			ResultSet rs=sta.executeQuery("select personid,personname from person");
			
			 while(rs.next()){
				 
				 	JSONObject row = new JSONObject();
					String c = rs.getString("personid");
					String n = rs.getString("personname");
					row.put("personid", c);
					row.put("personname", n);
					res.put(row);
				}
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
        
		 return "{data:"+res.toString()+"}";
	}
}
