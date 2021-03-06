package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.toolbox.dto.LoginDTO;
import com.toolbox.util.DBConnector;

public class LoginDAO {

	private DBConnector db = new DBConnector();
	private Connection con = null;
//通常通りログインの判別するためのメソッドです。
	public LoginDTO getLoginUserInfo(String loginUserId, String loginPassword) {
		con = db.getConnection();
		LoginDTO loginDTO = new LoginDTO();
		String sql = "SELECT * FROM user_info WHERE user_id = ? AND password = ?";

		try {

			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, loginUserId);
			preparedStatement.setString(2, loginPassword);
			ResultSet resultSet = preparedStatement.executeQuery();
				if(resultSet.next()) {

					loginDTO.setUserId(resultSet.getString("user_id"));
					loginDTO.setPassword(resultSet.getString("password"));
					loginDTO.setUserName(resultSet.getString("user_name"));
					loginDTO.setUserNameKana(resultSet.getString("user_name_kana"));
					loginDTO.setSex(resultSet.getInt("sex"));
					loginDTO.setEmail(resultSet.getString("email"));
					loginDTO.setRegist_date(resultSet.getString("regist_date"));
					loginDTO.setUpdate_date(resultSet.getString("update_date"));

					if(!(resultSet.getString("user_id").equals(null))) {
						loginDTO.setLoginFlg(true);
					}
				}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return loginDTO;
	}

//ログインした際にカートテーブルのtempUserIdとuserIdを紐づけします。
	public void StringWithCart(String userId,String tempUserId){

		con = db.getConnection();
		String sql = "UPDATE cart_info SET user_id = ? WHERE temp_user_id = ?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ps.setString(2, tempUserId);
			ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}