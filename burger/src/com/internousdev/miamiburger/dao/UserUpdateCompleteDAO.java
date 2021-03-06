package com.internousdev.miamiburger.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.miamiburger.util.DBConnector;
import com.internousdev.miamiburger.util.DateUtil;

public class UserUpdateCompleteDAO {
	public void UserUpdate(String userId,String familyName,String firstName,String familyNameKana,String firstNameKana,int sex,String email,String secretQuestion,String secretAnswer) throws SQLException {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		DateUtil dateUtil = new DateUtil();

		String sql = "UPDATE  user_info SET user_id=?, family_name=?, first_name=?, family_name_kana=?, first_name_kana=?, sex=?, email=?, secret_question=?, secret_answer=?, updated_date=? WHERE user_id=?"
				;

			try {
				PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, userId);
				preparedStatement.setString(2, familyName);
				preparedStatement.setString(3, firstName);
				preparedStatement.setString(4, familyNameKana);
				preparedStatement.setString(5, firstNameKana);
				preparedStatement.setInt(6, sex);
				preparedStatement.setString(7, email);
				preparedStatement.setString(8, secretQuestion);
				preparedStatement.setString(9, secretAnswer);
				preparedStatement.setString(10, dateUtil.getDate());
				preparedStatement.setString(11, userId);
				preparedStatement.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				connection.close();
		    }
	}
}
