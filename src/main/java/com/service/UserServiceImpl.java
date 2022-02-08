package com.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.db.DB;
import com.model.User;

public class UserServiceImpl implements UserService{

	@Override
	public boolean register(User user) {
		String query = "INSERT INTO users(firstName,lastName,userName,password)VALUES(?,?,?,?)";
		
		try {
			PreparedStatement pstm = DB.getDBConnection().prepareStatement(query);
			pstm.setString(1, user.getFirstName());
			pstm.setString(2, user.getLastName());
			pstm.setString(3, user.getUserName());
			pstm.setString(4, user.getPassword());
			
			pstm.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean login(String userName, String password) {
		String query = String.format("SELECT * FROM users WHERE userName='%s' and passWord='%s'",userName,password);
		
		try {
			Statement stm = DB.getDBConnection().createStatement();
			ResultSet rs = stm.executeQuery(query);
			if(rs.next())
				return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<User> getAllUser() {
		String query = "SELECT * FROM users";
		List<User> users = new ArrayList<User>();
		Statement stm;
		try {
			stm = DB.getDBConnection().createStatement();
			ResultSet rs = stm.executeQuery(query);
			User user = new User();
			while(rs.next()) {
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				users.add(user);
			}
			return users;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}

}
