package dao;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import bean.user;  
public class user_dao {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bigburger","root","root");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}
	
	public static int saveing(String name,String email,String message) {
		int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into userIng(name,email,message) values(?,?,?)");  
	        ps.setString(1,name);
	        ps.setString(2,email);
	        ps.setString(3,message);
	        
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    
	    return status;  
	}
	
	public static int saveitems(String itemname,int quantity) {
		int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into Orders(itemname,quantity) values(?,?)");  
	        ps.setString(1,itemname);
	        ps.setInt(2,quantity);
	        
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    
	    return status;  
	}


/*
public static int save(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");  
        ps.setString(1,u.getItem());
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  "update register set name=?,password=?,email=?,sex=?,country=? where id=?");  
        ps.setString(1,u.getItem());  
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(user u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
        ps.setString(1,u.getItem());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<user> getAllRecords(){  
    List<user> list=new ArrayList<user>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from register");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            user u=new user();  
            u.setItem(rs.getString("Item"));
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  

*/
	
}