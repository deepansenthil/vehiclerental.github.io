package com.nttdata.training.dao;



	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import java.util.List;

	import org.apache.log4j.Logger;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;

	public class LoginAdminDAO
	{
		static Logger log = Logger.getLogger(LoginDAO.class);

		public List validateAdmin(final int aid) throws DAOAppException {
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
						pStmt.setInt(1, aid);
					}
				};
				
				res = DBHelper.executeSelect(con, SqlMapper.FETCH_ADMIN,paramMapper, SqlMapper.MAP_ADMIN);

			} catch (DBConnectionException e) {
				log.error(e);
				throw new DAOAppException(e);
			} catch (DBFWException e) {
				throw new DAOAppException(e);
			}
			return res;

		}
	}



