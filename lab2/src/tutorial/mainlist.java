package tutorial;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
import java.util.*;
public class mainlist extends ActionSupport {
	public String Name;
	public ArrayList<Map> list;
	public String getName(){
		return Name;
	}
	public void setName(String Name){
		this.Name = Name;
	}	
	public String execute(){
		String ret = ERROR;
		Connection con = null;
		list = new ArrayList<Map>();
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://cnphlspinrfu.rds.sae.sina.com.cn:10468/bookdb?useUnicode=true&characterEncoding=utf-8", "bookdb", "02111996");
		    Statement stmt=con.createStatement();
        	String s="select * from book";
        	ResultSet rs=stmt.executeQuery(s);
            while(rs.next())
            {
                Map<String,String> map = new HashMap();
                map.put("ISBN", rs.getString(1));
                map.put("Title", rs.getString(2));
                map.put("AuthorID", rs.getString(3));
                map.put("Publisher", rs.getString(4));
                map.put("PublishDate", rs.getString(5));
                map.put("Price", rs.getString(6));
                list.add(map);
            }
            rs.close();
            stmt.close();
        	con.close();
            ret = SUCCESS;
		}
		catch(Exception e){
			ret =  ERROR;
		}finally{
			if(con != null){
				try{
					con.close();
				}catch(Exception e){
					
				}
			}
		}
		return ret;
	}
}
