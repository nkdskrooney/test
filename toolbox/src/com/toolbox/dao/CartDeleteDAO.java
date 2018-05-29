package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.toolbox.util.DBConnector;



public class CartDeleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = null;

//カート画面にて各商品ごとの情報を削除するメソッドです。
	public void CartDelete(String user_id, String temp_user_id ,List<Integer> cartId) {

		con = db.getConnection();
		String sql = "DELETE FROM cart_info WHERE (user_id=? OR temp_user_id=?) AND id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			for(int CI : cartId){
			ps.setString(1, user_id);
			ps.setString(2, temp_user_id);
			ps.setInt(3, CI);
			ps.executeUpdate();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}

//カート情報の全削除機能。完全な使い分けをするためカート画面では使用しません。購入完了時に使用します。
	public void CartAllDelete(String userId) {

		con = db.getConnection();
		String sql = "DELETE FROM cart_info WHERE user_id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
