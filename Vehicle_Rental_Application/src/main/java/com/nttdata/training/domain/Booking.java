package com.nttdata.training.domain;

public class Booking 
{
	private int user_id;
	private int vehicle_number;
	private String booking_status;
	private String  vehicle_name;
	
	private String location;
	private String begin_date;
	private String end_date;
	
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getBegin_date() {
		return begin_date;
	}
	public void setBegin_date(String begin_date) {
		this.begin_date = begin_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	
	
	
	public String getVehicle_name() {
		return vehicle_name;
	}
	public void setVehicle_name(String vehicle_name) {
		this.vehicle_name = vehicle_name;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getVehicle_number() {
		return vehicle_number;
	}
	public void setVehicle_number(int vehicle_number) {
		this.vehicle_number = vehicle_number;
	}
	public String getBooking_status() {
		return booking_status;
	}
	public void setBooking_status(String booking_status) {
		this.booking_status = booking_status;
	}
	@Override
	public String toString() {
		return "Booking [user_id=" + user_id + ", vehicle_number=" + vehicle_number + ", booking_status="
				+ booking_status + "]";
	}

	
	
}
