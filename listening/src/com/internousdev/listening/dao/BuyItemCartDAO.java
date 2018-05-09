package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.listening.util.DBConnector;
import com.internousdev.listening.util.DateUtil;

public class BuyItemCartDAO{
	private DateUtil dateUtil = new DateUtil();
	public DBConnector dbConnector = new DBConnector();
	public Connection con = dbConnector.getConnection();

	public void setCart(int item_transaction_id, int total_price, int total_count, String payment, String img_address, String tentative_id) throws SQLException {
		try {

			String sql =
					"INSERT INTO cart_item_transaction (item_transaction_id, total_price, total_count, payment, img_address, cart_id, insert_date)"
					+ "VALUES(?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setInt(1, item_transaction_id);
			preparedStatement.setInt(2, total_price);
			preparedStatement.setInt(3, total_count);
			preparedStatement.setString(4, payment);
			preparedStatement.setString(5, img_address);
			preparedStatement.setString(6, tentative_id);
			preparedStatement.setString(7, dateUtil.getDate());
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