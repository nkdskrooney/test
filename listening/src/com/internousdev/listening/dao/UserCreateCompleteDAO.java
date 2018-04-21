package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.listening.util.DBConnector;
import com.internousdev.listening.util.DateUtil;

public class UserCreateCompleteDAO{
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql =
		"INSERT INTO login_user_transaction (login_id, login_pass, user_name, user_web_address, user_address, insert_date)"
		+ "VALUES(?, ?, ?, ?, ?, ?)";

	public void cerateUser(String LoginId, String LoginPassword, String UserName, String WebAddress, String Address) throws SQLException {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, LoginId);
			preparedStatement.setString(2, LoginPassword);
			preparedStatement.setString(3, UserName);
			preparedStatement.setString(4, WebAddress);
			preparedStatement.setString(5, Address);

			preparedStatement.setString(6, dateUtil.getDate());
			preparedStatement.execute();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}
}