package com.nttdata.training.domain;


public class vehicle
{
	private int vehicle_number ;
    private String vehicle_type;
    private String vehicle_name;
    private int vehicle_price;
    private int discount;

	
	//Constructor:
	

	//Getter Setter:

	public int getVehicle_number()
	{
		return vehicle_number;
	}


	
	public void setVehicle_number(int vehicle_number) 
	{
		this.vehicle_number = vehicle_number;
	}


	public String getVehicle_type()
	{
		return vehicle_type;
	}


	public void setVehicle_type(String vehicle_type)
	{
		this.vehicle_type = vehicle_type;
	}


	public String getVehicle_name()
	{
		return vehicle_name;
	}


	public void setVehicle_name(String vehicle_name)
	{
		this.vehicle_name = vehicle_name;
	}


	public int getVehicle_price()
	{
		return vehicle_price;
	}


	public void setVehicle_price(int vehicle_price)
	{
		this.vehicle_price = vehicle_price;
	}


	public int getDiscount()
	{
		return discount;
	}


	public void setDiscount(int discount) 
	{
		this.discount = discount;
	}
	
	// To string:
	@Override
	public String toString() 
	{
		return "vehicle [vehicle_number=" + vehicle_number + ", vehicle_type=" + vehicle_type + ", vehicle_name="
				+ vehicle_name + ", vehicle_price=" + vehicle_price + ", discount=" + discount + "]";
	}


}

