package com.nttdata.training.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.nttdata.dbfw.ResultMapper;
import com.nttdata.training.domain.Admin;
import com.nttdata.training.domain.Booking;
import com.nttdata.training.domain.Feedback;
import com.nttdata.training.domain.customer;
import com.nttdata.training.domain.vehicle;

public class SqlMapper {

	// database : mydb
	// table Name : user_info 
	// fields :  portalid(int (6)), name (varchar), employeeid(int 6), technology (varchar), password (varchar)
	
	
	public static final String FETCH_USER = "select user_id,password,name from customer where user_id=?";
	
	public static final String FETCH_ADMIN = "select admin_id,password,admin_name from admin where admin_id=?";
	/*1*/public static final String ADD_USER = "insert into customer values(?,?,?,?,?,?)";           
	public static final String FETCH_VEHICLE = "select vehicle_number,vehicle_type,vehicle_name,vehicle_price,discount_percent from vehicle where vehicle_name=?"; 
	public static final String FETCH_VEHICLE1 = "select * from vehicle ";
	public static final String FETCH_BOOKING1 = "select * from booking ";
	public static final String FETCH_USER1 = "select * from customer ";
	public static final String FETCH_FEED = "select * from feedback";
	public static final String FETCH_BOOKING ="select user_id,vehicle_number, vehicle_name, booking_status from booking where vehicle_name=?";
	/*1*/public static final String ADD_BOOK = "insert into booking values(?,?,?,?,?,?,?)"; 
	/*1*/public static final String ADD_FEED = "insert into feedback values(?,?,?,?)"; 
	/*1*/public static final String ADD_VEH = "insert into vehicle values(?,?,?,?,?)";
	
	public static final String UPDATEDISCOUNT= "update vehicle set discount_percent=? where vehicle_number=? "; // update discount.
	// FOR MAPPING USER INFO
	public static final ResultMapper MAP_USER = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			customer user = new customer();
			user.setUser_id(rs.getInt("user_id"));
			user.setPassword(rs.getString("password"));
			user.setName(rs.getString("name"));
			user.setCity(rs.getString("city"));
			user.setEmail(rs.getString("email"));
			user.setContact_number(rs.getInt("contact_number"));
			
			
			return user;
			
		}
	};
	
	
	// FOR MAPPING USER FOR VALIDATE AND LOGIN
	public static final ResultMapper MAP_USERV = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			customer user = new customer();
			
			user.setPassword(rs.getString("password"));
			user.setName(rs.getString("name"));
			
			
			
			return user;
			
		}
	};
	
	
	public static final ResultMapper MAP_USERVR = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			customer user = new customer();
			user.setUser_id(rs.getInt("user_id"));
			
			
			
			return user;
			
		}
	};
	
	

	// FOR MAPPING ADMIN INFO
	public static final ResultMapper MAP_ADMIN = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			Admin admin = new Admin();
			admin.setAdmin_id(rs.getInt("admin_id"));
			admin.setPassword(rs.getString("password"));
		
			
			
			return admin;
			
		}
	};
	
	// FOR MAPPING VEHICLE INFO
	public static final ResultMapper MAP_VEHICLE = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			vehicle veh = new vehicle();
			veh.setVehicle_number(rs.getInt("vehicle_number"));
			veh.setVehicle_type(rs.getString("vehicle_type"));
			veh.setVehicle_name(rs.getString("vehicle_name"));
			veh.setVehicle_price(rs.getInt("vehicle_price"));
			veh.setDiscount(rs.getInt("discount_percent"));
			return veh;
			
		}
	};
	
	
	
	
	// FOR MAPPING Booking INFO
	public static final ResultMapper MAP_BOOKING = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			Booking book= new Booking();
			book.setUser_id(rs.getInt("user_id"));
			book.setVehicle_number(rs.getInt("vehicle_number"));
			book.setVehicle_name(rs.getString("vehicle_name"));
			book.setBooking_status(rs.getString("booking_status"));
			book.setLocation(rs.getString("location"));
			book.setBegin_date(rs.getString("begin_date"));
			book.setEnd_date(rs.getString("end_date"));
			
			
			return book;
			
		}
	};
	
	public static final ResultMapper MAP_BOOKINGV = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			Booking book= new Booking();
		
			book.setVehicle_name(rs.getString("vehicle_name"));
			
			
			
			return book;
			
		}
	};
	
	
	// FOR MAPPING Booking INFO
		public static final ResultMapper MAP_FEED = new ResultMapper() {

			@Override
			public Object mapRows(ResultSet rs) throws SQLException {
				Feedback feed= new Feedback();
				feed.setName(rs.getString("name"));
			     feed.setEmail(rs.getString("email"));
				feed.setPhone(rs.getString("phone"));
				feed.setFeedback(rs.getString("feedback"));
				
				
				
				return feed;
				
			}
		};
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
