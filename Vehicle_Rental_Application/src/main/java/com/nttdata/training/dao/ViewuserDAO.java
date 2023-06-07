package com.nttdata.training.dao;

import java.sql.Connection;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;

public class ViewuserDAO 

{

	
	public static List viewuser() throws DAOAppException 
	{
		
		List res=null;
		ConnectionHolder ch=null;
		Connection con=null;
		try {
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
			
			

			res = DBHelper.executeSelect(con, SqlMapper.FETCH_USER1, SqlMapper.MAP_USER);

		} catch (DBConnectionException e) {
		
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;
	
		}
}
