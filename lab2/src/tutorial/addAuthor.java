package tutorial;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class addAuthor extends ActionSupport {
	public  String AuthorID;
	public String Name;
	public  String Age;
	public String Country;
	
	public String getAuthorID(){
		return AuthorID;
	}
	
	public void setAuthorID(String AuthorID){
		this.AuthorID = AuthorID;
	}
	
	public String getName(){
		return Name;
	}
	
	public void setName(String Name){
		this.Name = Name;
	}
	
	public String getAge(){
		return Age;
	}
	
	public void setAge(String Age){
		this.Age = Age;
	}
	
	public String getCountry(){
		return Country;
	}
	
	public void setCountry(String Country){
		this.Country = Country;
	}
	
	public String execute(){
		String ret = ERROR;
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://cnphlspinrfu.rds.sae.sina.com.cn:10468/bookdb?useUnicode=true&characterEncoding=utf-8", "bookdb", "02111996");
		    Statement stmt=conn.createStatement();
        	String sql="insert into author(AuthorID,Name,Age,Country) values('"+AuthorID+"','"+Name+"','"+Age+"','"+Country+"')";
        	stmt.executeUpdate(sql);
        	stmt.close();
        	conn.close();
        	ret = SUCCESS;
		}
		catch(Exception e){
			ret =  ERROR;
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(Exception e){
					
				}
			}
		}
		return ret;
	}
}
