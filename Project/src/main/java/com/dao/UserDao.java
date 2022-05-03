package com.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.User;
public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/skydb","root","pe22021");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static void register(User u){
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into passenger(first_name,last_name,email,password,status) values(?,?,?,?,'active')");
		ps.setString(1,u.getFirst_name());
		ps.setString(2,u.getLast_name());
		ps.setString(3,u.getEmail());
		ps.setString(4,u.getPassword());
		ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
}
public static int updateUser(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update passenger set first_name=?,last_name=?,email=?,password=?,status=? where idpassenger=?");
		ps.setString(1,u.getFirst_name());
		ps.setString(2,u.getLast_name());
		ps.setString(3,u.getEmail());
		ps.setString(4,u.getPassword());
		ps.setString(5,u.getStatus());
		ps.setInt(6,u.getIdpassenger());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int updateTicket(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update ticket set idflight=?,idpassenger=? where idticket=?");
		ps.setInt(1,u.getIdflight());
		ps.setInt(2,u.getIdpassenger());
		ps.setInt(3,u.getIdticket());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int updateSeatAvailable(int idflight){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update airplane set seat_available=(select count(*) from ticket where idflight="+idflight+" and idpassenger=0) where idflight="+idflight+";");
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from passenger where idpassenger=?");
		ps.setInt(1,u.getIdpassenger());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}

public static int cancelBooking(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update ticket set idpassenger=0 where idticket=?");
		ps.setInt(1,u.getIdticket());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	
	return status;
}

public static User getRecordByActive(){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from passenger where status='active'");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setIdpassenger(rs.getInt("idpassenger"));
			u.setFirst_name(rs.getString("first_name"));
			u.setLast_name(rs.getString("last_name"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setStatus(rs.getString("status"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static User getPrice(int idflight){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from airplane where idflight=?");
		ps.setInt(1,idflight);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setIdairplane(rs.getInt("idairplane"));
			u.setIdflight(rs.getInt("idflight"));
			u.setPrice(rs.getDouble("price"));
			u.setSeat_available(rs.getInt("seat_available"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static User getSeatAvailable(int idflight){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from airplane where idflight=?");
		ps.setInt(1,idflight);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setIdairplane(rs.getInt("idairplane"));
			u.setIdflight(rs.getInt("idflight"));
			u.setPrice(rs.getDouble("price"));
			u.setSeat_available(rs.getInt("seat_available"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static List<User> getAllScheduleRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from schedule");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setIdschedule(rs.getInt("idschedule"));
			u.setIdairplane(rs.getInt("idairplane"));
			u.setIdflight(rs.getInt("idflight"));
			u.setDestname(rs.getString("destname"));
			u.setDescription(rs.getString("description"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static User getFlightRecordsById(int idflight){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from flight where idflight=?");
		ps.setInt(1,idflight);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setIdflight(rs.getInt("idflight"));
			u.setDeparture_time(rs.getString("departure_time"));
			u.setDate(rs.getString("date"));
			u.setOrigin(rs.getString("origin"));
			u.setDestination(rs.getString("destination"));
		}
		}catch(Exception e){System.out.println(e);}
	return u;
}

public static List<User> getPassengerRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from passenger");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setIdpassenger(rs.getInt("idpassenger"));
			u.setFirst_name(rs.getString("first_name"));
			u.setLast_name(rs.getString("last_name"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setStatus(rs.getString("status"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static User getPassengerById(int idpassenger){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from passenger where idpassenger=?");
		ps.setInt(1,idpassenger);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setIdpassenger(rs.getInt("idpassenger"));
			u.setFirst_name(rs.getString("first_name"));
			u.setLast_name(rs.getString("last_name"));
			u.setEmail(rs.getString("email"));
			u.setPassword(rs.getString("password"));
			u.setStatus(rs.getString("status"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static List<User> getTicketRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from ticket");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setIdticket(rs.getInt("idticket"));
			u.setIdflight(rs.getInt("idflight"));
			u.setIdpassenger(rs.getInt("idpassenger"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static List<User> getTicketByIdFlight(int idflight){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from ticket where idflight=?");
		ps.setInt(1,idflight);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setIdticket(rs.getInt("idticket"));
			u.setIdflight(rs.getInt("idflight"));
			u.setIdpassenger(rs.getInt("idpassenger"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}

public static List<User> getTicketByIdPassenger(int idpassenger){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from ticket where idpassenger=?");
		ps.setInt(1,idpassenger);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setIdticket(rs.getInt("idticket"));
			u.setIdflight(rs.getInt("idflight"));
			u.setIdpassenger(rs.getInt("idpassenger"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
}
