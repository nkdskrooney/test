package com.internousdev.miamiburger.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.miamiburger.dto.MyPageDTO;
import com.internousdev.miamiburger.util.DBConnector;

public class MyPageDAO {

		public MyPageDTO getUserInfo(String userId){
			DBConnector dbConnector= new DBConnector();
			Connection con = dbConnector.getConnection();
			String sql = "SELECT user_id ,password, family_name, first_name ,family_name_kana ,first_name_kana, sex, email, status, logined, secret_question, secret_answer, regist_date, updated_date "
					+ "FROM user_info WHERE user_id = ?";
			MyPageDTO myPageDTO = new MyPageDTO();
			try {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, userId);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){

					myPageDTO.setUserId(rs.getString("user_id"));
					myPageDTO.setPassword(rs.getString("password"));
					myPageDTO.setFamilyName(rs.getString("family_name"));
					myPageDTO.setFirstName(rs.getString("first_name"));
					myPageDTO.setFamilyNameKana(rs.getString("family_name_kana"));
					myPageDTO.setFirstNameKana(rs.getString("first_name_kana"));
					myPageDTO.setSex(rs.getInt("sex"));
					myPageDTO.setEmail(rs.getString("email"));
					myPageDTO.setStatus(rs.getInt("status"));
					myPageDTO.setLogined(rs.getInt("logined"));
					myPageDTO.setSecretQuestion(rs.getString("secret_question"));
					myPageDTO.setSecretAnswer(rs.getString("secret_answer"));
					myPageDTO.setRegistDate(rs.getString("regist_date"));
					myPageDTO.setUpdatedDate(rs.getString("updated_date"));

				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					 con.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			return myPageDTO;
		}
	}

