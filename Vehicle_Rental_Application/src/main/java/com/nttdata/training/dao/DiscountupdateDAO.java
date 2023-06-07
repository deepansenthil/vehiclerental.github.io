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
import com.nttdata.training.domain.vehicle;

public class DiscountupdateDAO 

{

	public int updatediscount(final vehicle veh) throws DAOAppException {
		ConnectionHolder ch = null;
		Connection con = null;
		int res = -1;
		
		ParamMapper mapper = new ParamMapper() 
		{
			@Override
			public void mapParams(PreparedStatement pStmt) throws SQLException
			{
				
				pStmt.setInt(1, veh.getDiscount());
				pStmt.setInt(2, veh.getVehicle_number());
				
				
			
				
			}
		};
		  		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();
			res = DBHelper.executeUpdate(con, SqlMapper.UPDATEDISCOUNT, mapper);

		} catch (DBConnectionException e) {
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;
	}


	
	
}
