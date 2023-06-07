package com.nttdata.training.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;

public class ValidatebookingDAO 

{
	

	// for validating vehicle

	public List validatevehicle( final String car_name) throws DAOAppException {
		List res = null;
		ConnectionHolder ch = null;
		Connection con = null;
		try {
			ch = ConnectionHolder.getInstance();// reads all props for db con 
			con = ch.getConnection();
			ParamMapper paramMapper = new ParamMapper() 
			{

				@Override
				public void mapParams(PreparedStatement pStmt)
						throws SQLException 
				{
					pStmt.setString(1, car_name);
				}
			};
			
			res = DBHelper.executeSelect(con, SqlMapper.FETCH_BOOKING,paramMapper, SqlMapper.MAP_BOOKINGV);

		} catch (DBConnectionException e) {
			
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;

	}
	
	
	
	
	public static List validatevehiclefull() throws DAOAppException 
	{
		
		List res=null;
		ConnectionHolder ch=null;
		Connection con=null;
		try {
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
			
			

			res = DBHelper.executeSelect(con, SqlMapper.FETCH_BOOKING1, SqlMapper.MAP_BOOKING);

		} catch (DBConnectionException e) {
		
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;
	
		}


}
