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
import com.nttdata.training.domain.Booking;

// EmployeeDao
// employee login
// register,
// deletion
// updation .. 

public class BookingDAO {
	
	
	public int bookvehicle(final Booking book) throws DAOAppException {
		ConnectionHolder ch = null;
		Connection con = null;
		int res = -1;
		
		ParamMapper mapper = new ParamMapper() 
		{
			@Override
			public void mapParams(PreparedStatement pStmt) throws SQLException
			{
				pStmt.setInt(1, book.getUser_id());
				pStmt.setInt(2, book.getVehicle_number());
				pStmt.setString(3, book.getVehicle_name());
				pStmt.setString(4, book.getBooking_status());
				pStmt.setString(5, book.getLocation());
				pStmt.setString(6, book.getBegin_date());
				pStmt.setString(7, book.getEnd_date());
				
			}
		};
		  		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();
			res = DBHelper.executeUpdate(con, SqlMapper.ADD_BOOK, mapper);

		} catch (DBConnectionException e) {
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}
		return res;
	}

	
}
