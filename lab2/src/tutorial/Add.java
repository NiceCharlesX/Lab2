package tutorial;


import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class Add extends ActionSupport {
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
		Connection conn = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
		    conn=DriverManager.getConnection("jdbc:mysql://cnphlspinrfu.rds.sae.sina.com.cn:10468/bookdb?useUnicode=true&characterEncoding=utf-8", "bookdb", "02111996");
		    Statement stmt=conn.createStatement();
        	String sql="insert into book(Isbn,Title,AuthorID,Publisher,PublishDate,Price) values('"+ISBN+"','"+Title+"','"+AuthorID+"','"+Publisher+"','"+PublishDate+"','"+Price+"')";
        	stmt.executeUpdate(sql);
        	boolean flag=true;
        	String s="select * from author";
            ResultSet rs=stmt.executeQuery(s);
            while(rs.next())
            {
                if(AuthorID.equals(rs.getString(1)))
                {
                	flag =false;
                	break;
                }
            }
            rs.close();
            stmt.close();
        	conn.close();
            if(flag)
            {
            	ret = "addAuthor";
            }
            else{
            	ret = SUCCESS;
            }
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
