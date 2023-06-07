package com.nttdata.testcase;

import static org.junit.Assert.*;
import org.junit.Test;

import com.nttdata.dbfw.DBFWException;
import com.nttdata.training.dao.AddvehicleDAO;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.ViewuserDAO;
import com.nttdata.training.domain.User;
import com.nttdata.training.domain.vehicle;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;



public class Admin_Add_Test 
{	
	int expectedresult=1;
	int outresult;
	@Test
	public void VehicleAddingtest() throws Exception {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter vehicle no:");
		int vehno=sc.nextInt();
		System.out.println("Enter Vehicle type:");
		String type=sc.next();
	
		System.out.println("Enter name of vehicle:");
		String vehname=sc.next();
        System.out.println("Enter Booking price:");
		int bookingprice=sc.nextInt();
		System.out.println("Enter discount in %:");
		int  discount=sc.nextInt();
		AddvehicleDAO d = new AddvehicleDAO();
		vehicle v=new vehicle();
		v.setVehicle_number(vehno);
		v.setVehicle_type(type);
		v.setVehicle_name(vehname);
		v.setVehicle_price(bookingprice);
		v.setDiscount( discount);
		
		
		outresult = d.addvehicle(v);
		
		if (outresult==1) 
		{
			System.out.println("New vehicle record detected");
		}
		else
		{
			System.out.println("Vehicle Adding failed");
		}
		
		
		
		assertEquals(expectedresult,outresult);
		
	     }



}


	







	
