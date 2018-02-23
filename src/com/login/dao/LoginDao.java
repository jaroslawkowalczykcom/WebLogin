package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	
	String sql = "SELECT `username`, `password`, `id` FROM `dane` WHERE `username`=? AND `password`=?";
	String url = "jdbc:mysql://jarq.nazwa.pl/admin_db";
	String username = "admin_admin";
	String password = "jarek1234";
	String driver = "com.mysql.jdbc.Driver";
	
	public boolean check(String uname, String pass)
	{
		try {
			Class.forName(driver);  
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	

}
