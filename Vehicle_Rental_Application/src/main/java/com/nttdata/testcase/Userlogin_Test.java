package com.nttdata.testcase;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import org.junit.Test;

import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.LoginDAO;
import com.nttdata.training.dao.ViewuserDAO;
import com.nttdata.training.domain.customer;

public class Userlogin_Test {

	int expectedresult=1;
	int outresult;
	@Test
	public void userlogin() throws Exception {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter userid:");
		int userid=sc.nextInt();
		System.out.println("Enter password:");
		String password=sc.next();
		LoginDAO d = new LoginDAO();
	    customer v=new customer();
	   v.setUser_id(userid);
	   v.setPassword(password);
	    //100
	   //kar@32
		
		List clist=d.validateUser(userid);
		
		
		if (clist.size()>0)
		{
			outresult=1;
			System.out.println(" login success");
		}
		else 
		{
			System.out.println("login is failed");
			
		
		}
		assertEquals(expectedresult,outresult);
	}
	
}
