//Online property management System
//IT22135384
package propertycontrol;


import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;



public class LandlordDBUtil {
	 private static boolean isSuccess;
	 private static Connection con = null;
	 private static Statement stmt = null;
	 private static ResultSet rs = null;
	
	//validate
	 public static boolean validate(String username ,String password) {
		 try {
			 
			 con = DBConnect.getConnection();
             stmt = con.createStatement();
             
             String sql = "SELECT * FROM landlord WHERE L_Username ='"+username+"'and L_Password ='"+password+"'";
		     rs = stmt.executeQuery(sql);
		     
		     if(rs.next()) {
		    	 isSuccess = true;
		     }else {
		    	 isSuccess = false;
		     }
             
             
		 }catch(Exception e) {
			e.printStackTrace ();
		 }
		 
		 
		 
		 
		 return isSuccess;
	 }
	 
	 public static List<Landlord> getLandlord(String userName)
	 {
		 ArrayList<Landlord> landlord = new ArrayList<>();
		 
		 try {
			 con = DBConnect.getConnection();
       	     stmt = con.createStatement();
			 
       	     String sql = "SELECT * FROM landlord WHERE L_Username='"+userName+"'";
       	     rs = stmt.executeQuery(sql);
       	     
       	     while(rs.next()) {
       	    	 int id = rs.getInt(1);
       	    	String name =rs.getString(2);
            	String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String pic = rs.getString(7);
				
				Landlord lan = new Landlord(id, name, email, phone ,userU ,passU ,pic);
       	    	landlord.add(lan);
       	     }
			 
		 }catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 
		 
		 
		 return landlord;
	 }
	 
	 
	 
	 


    //Insert Landlord
	
	public static boolean Insertlandlord1(String name ,String email ,String phone ,String username ,String password ,String photo) {
		boolean isSuccess = false;
		
		try {
			
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "INSERT INTO landlord VALUES(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"','"+photo+"')";
		int rs = stmt .executeUpdate(sql);
		
		if(rs>0) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	
	//update customer 
	
	public static boolean Updateprofile(String id, String name, String phone ,String email ,String username, String password, String photo) {
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE landlord SET L_Name='"+name+"',L_Phone='"+phone+"',L_Email='"+email+"' ,L_Username='"+username+"',L_Password='"+password+"',L_Profilepic='"+photo+"'" + "WHERE L_ID='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//data retrieve
	public static List<Landlord> getLandlordDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Landlord> lan = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM landlord WHERE L_ID='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				String photo = rs.getString(7);
				
				Landlord l = new Landlord(id,name ,email,phone,username ,password,photo);
				lan.add(l);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return lan;
	}
	
	
	
	
	
	
	
	
	//delete landlord
	public static boolean deletelandlord(String id) {
		int convId = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM landlord WHERE L_ID= '"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

	



	
	
	
	
	
	

}


