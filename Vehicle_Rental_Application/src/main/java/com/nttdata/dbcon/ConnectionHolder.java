package com.nttdata.dbcon;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
//import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

import org.apache.commons.dbcp.BasicDataSource;

public class ConnectionHolder {

	public static ConnectionHolder instance = null;
	private DataSource ds = null;

	private ConnectionHolder() {

	}

	public static ConnectionHolder getInstance() throws DBConnectionException   //getting connection perameters from the contect.
	{
		synchronized (ConnectionHolder.class) {
			if (instance == null) {
				instance = new ConnectionHolder();
				instance.initAppDataSource();
			}
		}
		return instance;
	}

	public Connection getConnection() throws DBConnectionException {
		try {
			return ds.getConnection();  //  it contains data base connection.
		} catch (SQLException e) {
			throw new DBConnectionException(e);
		}
	}

	public void dispose() throws DBConnectionException  //close database connection
	{
		BasicDataSource bds = (BasicDataSource) ds;
		try {
			bds.close();
		} catch (SQLException e) {
			throw new DBConnectionException("Unable to close the connection", e);
		}
	}

	
	private void initAppDataSource() throws DBConnectionException 
	
	{
		ds = new BasicDataSource();
        ((BasicDataSource) ds).setDriverClassName("com.mysql.cj.jdbc.Driver");
        ((BasicDataSource) ds).setUrl("jdbc:mysql://localhost:3306/vehicle_rent_db");
        ((BasicDataSource) ds).setUsername("root");
        ((BasicDataSource) ds).setPassword("Deepan@007");
		
	}

}
