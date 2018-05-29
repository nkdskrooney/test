package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;


import com.toolbox.dto.CartDTO;
import com.toolbox.util.DBConnector;
import com.toolbox.util.DateUtil;

public class BuyItemCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = null;

	public void purchaseInsert(ArrayList<CartDTO> cartList, int payment) throws SQLException {

		DateUtil dateUtil = new DateUtil();
		String sql = "INSERT INTO purchase_info (user_id, item_id, total_price, count, payment, regist_date)VALUES(?, ?, ?, ?, ?, ?)";

	//拡張for文でcartListを回し、各CartDTOを一つずつテーブルへInsertしていきます。
		for (CartDTO buyList : cartList) {
			try {
				con = db.getConnection();
				PreparedStatement preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1, buyList.getUserId());
				preparedStatement.setInt(2, buyList.getItemId());
				preparedStatement.setInt(3, buyList.getTotalPrice());
				preparedStatement.setInt(4, buyList.getCount());
				preparedStatement.setInt(5, payment);
				preparedStatement.setString(6, dateUtil.getDate());
				preparedStatement.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}