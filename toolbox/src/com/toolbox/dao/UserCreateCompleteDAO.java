package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.toolbox.util.DBConnector;
import com.toolbox.util.DateUtil;

public class UserCreateCompleteDAO{
	private DBConnector db = new DBConnector();
	private Connection con = null;
	private DateUtil dateUtil = new DateUtil();
	//何の変哲もなくDBへInsertするだけ
	public void cerateUser(String userId, String password, String userName, String userNameKana, int sex, String email) throws SQLException {
		con = db.getConnection();
		String sql ="INSERT INTO user_info (user_id, password, user_name, user_name_kana, sex, email, regist_date)"
					+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, userId);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, userNameKana);
			preparedStatement.setInt(5, sex);
			preparedStatement.setString(6, email);
			preparedStatement.setString(7, dateUtil.getDate());

			preparedStatement.execute();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
	}
}