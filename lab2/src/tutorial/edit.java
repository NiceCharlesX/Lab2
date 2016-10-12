package tutorial;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class edit extends ActionSupport {
	public  String ISBN;
	public String Title;
	public  String AuthorID;
	public String Publisher;
	public  String PublishDate;
	public String Price;
	public String getISBN(){
		return ISBN;
	}
	
	public void setISBN(String ISBN){
		this.ISBN = ISBN;
	}
	
	public String getTitle(){
		return Title;
	}
	
	public void setTitle(String Title){
		this.Title = Title;
	}
	
	public String getAuthorID(){
		return AuthorID;
	}
	
	public void setAuthorID(String AuthorID){
		this.AuthorID = AuthorID;
	}
	public String getPublisher(){
		return Publisher;
	}
	
	public void setPublisher(String Publisher){
		this.Publisher = Publisher;
	}
	public String getPublishDate(){
		return PublishDate;
	}
	
	public void setPublishDate(String PublishDate){
		this.PublishDate = PublishDate;
	}
	public String getPrice(){
		return Price;
	}
	
	public void setPrice(String Price){
		this.Price = Price;
	}
	
	
	public String execute(){
		String ret = ERROR;
		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://cnphlspinrfu.rds.sae.sina.com.cn:10468/bookdb?useUnicode=true&characterEncoding=utf-8", "bookdb", "02111996");
		    Statement stmt=con.createStatement(); 
		    String s="select * from book where ISBN='"+ISBN+"'";
		    ResultSet rs=stmt.executeQuery(s);
		    rs.next();
		    Title=rs.getString(2);
		    AuthorID=rs.getString(3);
		    Publisher=rs.getString(4);
		    PublishDate=rs.getString(5);
		    Price=rs.getString(6);
		    rs.close();
		    stmt.close();
		    con.close();
		    ret=SUCCESS;
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
