package com.internousdev.toolbox.dao;

public class BuyItemCompleteDAO {

//	public void buyItemInfo(ArrayList<ItemDTO> List, String user_master_id) throws SQLException {
//		DBConnector dbConnector = new DBConnector();
//		Connection connection = dbConnector.getConnection();
//		DateUtil dateUtil = new DateUtil();
//
//		String sql = "INSERT INTO user_buy_item_transaction (" + "item_transaction_id, total_price,"
//				+ " total_count, user_master_id, pay, img_address, insert_date)" + " VALUES(?, ?, ?, ?, ?, ?, ?)";
//
//		for (ItemDTO itemList : List) {
//			try {
//				PreparedStatement preparedStatement = connection.prepareStatement(sql);
//				preparedStatement.setInt(1, itemList.getItemId());
//				preparedStatement.setInt(2, itemList.getTotalPrice());
//				preparedStatement.setInt(3, itemList.getPurchaseNumber());
//				preparedStatement.setString(4, user_master_id);
//				preparedStatement.setString(5, itemList.getPayment());
//				preparedStatement.setString(6, itemList.getImgAddress());
//				preparedStatement.setString(7, dateUtil.getDate());
//				preparedStatement.execute();
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		try {
//			connection.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
}