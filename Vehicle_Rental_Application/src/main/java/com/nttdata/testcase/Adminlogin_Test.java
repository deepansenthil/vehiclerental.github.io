package com.nttdata.testcase;

import static org.junit.Assert.*;
import java.util.List;
import java.util.Scanner;
import org.junit.Test;
import com.nttdata.training.dao.LoginAdminDAO;
import com.nttdata.training.domain.Admin;
public class Adminlogin_Test
{

	int expectedresult=1;
	int outresult;
	@Test
	public void userlogin() throws Exception {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter adminid:");
		int adminid=sc.nextInt();
		System.out.println("Enter password:");
		String password=sc.next();
		LoginAdminDAO al = new LoginAdminDAO();
	    Admin a=new Admin();
	   a.setAdmin_id(adminid);
	   a.setPassword(password);
	    //1990
	   //karthi@007
		
		List clist=al.validateAdmin(adminid);
		
		
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
