package com.nttdata.testcase;

import static org.junit.Assert.*;

import java.util.Scanner;

import org.junit.Test;

import com.nttdata.training.dao.BookingDAO;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.domain.Booking;

public class User_Book_Test {

	@Test
	public void test() throws DAOAppException 
	{
		
		
		
		int expectedresult=1;
		int outresult;
	
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter User ID :");
			int uid=sc.nextInt();
			
			System.out.println("Enter Vehicle Number:");
			int vnum=sc.nextInt();
		
			System.out.println("Enter name of vehicle:");
			String vname=sc.next();
			
	        String bookstatus="Booked";
			
			System.out.println("Enter Location:");
			String  loc=sc.next();
			
			System.out.println("Enter Begin Data(yyyy-mm-dd):");
			String  str=sc.next();
			
			System.out.println("Enter End Date(yyyy-mm-dd):");
			String end=sc.next();
			
			BookingDAO b = new BookingDAO();
			Booking bk=new Booking();
			bk.setUser_id(uid);
			bk.setVehicle_number(vnum);
			bk.setVehicle_name(vname);
			bk.setBooking_status(bookstatus);
			bk.setLocation(loc);
			bk.setBegin_date(str);
			bk.setEnd_date(end);
			
			outresult = b.bookvehicle(bk);
			
			if (outresult==1) 
			{
				System.out.println("Vehicle Booked");
			}
			else
			{
				System.out.println("Vehicle Booking failed");
			}
			
			
			
			assertEquals(expectedresult,outresult);
			
	}

}

