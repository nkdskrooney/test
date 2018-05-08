package com.internousdev.miamiburger.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.miamiburger.util.DBConnector;
import com.internousdev.miamiburger.util.DateUtil;

public class ChangePasswordCompleteDAO {

	public void ChangePassword(String password,String userId) throws SQLException {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		DateUtil dateUtil = new DateUtil();

		String sql = "UPDATE  user_info SET password=?, updated_date=? WHERE user_id=?";

			try {
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, password);
				preparedStatement.setString(2, dateUtil.getDate());
				preparedStatement.setString(3, userId);

				preparedStatement.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
		    }
	}

}
