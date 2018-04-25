package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.util.DBConnector;
import com.internousdev.listening.util.DateUtil;

public class BuyItemCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_buy_item_transaction ("
			+ "item_transaction_id, total_price,"
			+ " total_count, user_master_id, pay, img_address, insert_date)"
			+ " VALUES(?, ?, ?, ?, ?, ?, ?)";

	public void buyItemInfo(ItemDTO itemList,  String user_master_id) throws SQLException {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, itemList.getItemId());
			preparedStatement.setInt(2, itemList.getTotalPrice());
			preparedStatement.setInt(3, itemList.getPurchaseNumber());
			preparedStatement.setString(4, user_master_id);
			preparedStatement.setString(5, itemList.getPayment());
			preparedStatement.setString(6, itemList.getImgAddress());
			preparedStatement.setString(7, dateUtil.getDate());
			System.out.println(itemList);
			System.out.println(user_master_id);
			preparedStatement.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}
}