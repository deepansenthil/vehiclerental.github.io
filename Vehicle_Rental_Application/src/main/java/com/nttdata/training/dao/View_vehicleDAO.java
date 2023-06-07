package com.nttdata.training.dao;


	import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import java.util.ArrayList;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;

	public class View_vehicleDAO 
	{
		static Logger log = Logger.getLogger(LoginDAO.class);

	public static List viewvehicle(final String name) throws DAOAppException 
		{
			
			List res=null;
			ConnectionHolder ch=null;
			Connection con=null;
			try {
				ch=ConnectionHolder.getInstance();
				con=ch.getConnection();
				
				ParamMapper paramMapper = new ParamMapper() 
				{

					@Override
					public void mapParams(PreparedStatement pStmt)
							throws SQLException 
					{
						pStmt.setString(1, name);
					}
				};
				
				

				res = DBHelper.executeSelect(con, SqlMapper.FETCH_VEHICLE, paramMapper , SqlMapper.MAP_VEHICLE);

			} catch (DBConnectionException e) {
			
				throw new DAOAppException(e);
			} catch (DBFWException e) {
				throw new DAOAppException(e);
			}
			return res;
		
			}
	
	
	public static List viewvehicle_noparam() throws DAOAppException 
	{
		
		List res=null;
		ConnectionHolder ch=null;
		Connection con=null;
		try {
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
			
			

			res = DBHelper.executeSelect(con, SqlMapper.FETCH_VEHICLE1, SqlMapper.MAP_VEHICLE);

		} catch (DBConnectionException e) {
		
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;
	
		}
	
	
	
}

		
		
	



