package com.internousdev.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.toolbox.util.DBConnector;
import com.internousdev.toolbox.util.DateUtil;

public class CartInsertDAO{
	private DateUtil dateUtil = new DateUtil();
	private DBConnector db = new DBConnector();
	private Connection con = null;

//未ログイン時にtemp_user_idでカートに情報を格納する
	public void CartInsert(String temp_user_id, int item_id, int count) throws SQLException {
		con =  db.getConnection();
		try {
			String sql = "INSERT INTO cart_info (temp_user_id, item_id, count, regist_date )VALUES(?,?,?,?)";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, temp_user_id);
			preparedStatement.setInt(2, item_id);
			preparedStatement.setInt(3, count);
			preparedStatement.setString(4, dateUtil.getDate());

			preparedStatement.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{
				 con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
//ログイン時にuser_idにてカートに情報を格納する
	public void CartInsert(String user_id, String temp_user_id, int item_id, int count) throws SQLException {
		con =  db.getConnection();
		try {
			String sql = "INSERT INTO cart_info (user_id, temp_user_id, item_id, count, regist_date)VALUES(?,?,?,?,?) WHERE temp_user_id=? ";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, user_id);
			preparedStatement.setString(2, temp_user_id);
			preparedStatement.setInt(3, item_id);
			preparedStatement.setInt(4, count);
			preparedStatement.setString(5, dateUtil.getDate());

			preparedStatement.setString(6, temp_user_id);
			preparedStatement.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{
				 con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}