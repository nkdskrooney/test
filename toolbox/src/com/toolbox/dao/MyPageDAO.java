package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.toolbox.dto.MyPageDTO;
import com.toolbox.util.DBConnector;

public class MyPageDAO {
//DBConnectorの接続処理
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
//getMyPageUserInfo()の作成：購入履歴をDBから抽出するメソッド
	public ArrayList<MyPageDTO> getMyPageUserInfo (String item_transaction_id, String user_master_id) throws SQLException {
//MyPageDTO型のArrayListを定義
		ArrayList<MyPageDTO> myPageDTO = new ArrayList<MyPageDTO>();
//変数sqlにSELECT文を格納
		String sql = "SELECT ubit.id, iit.item_name, ubit.total_price, ubit.total_count, ubit.pay, ubit.insert_date, iit.img_address "
				+ "FROM user_buy_item_transaction ubit LEFT JOIN item_info_transaction iit "
				+ "ON ubit.item_transaction_id = iit.id WHERE ubit.item_transaction_id  = ? AND ubit.user_master_id  = ? "
				+ "ORDER BY insert_date DESC";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
//変数内のsql文に引数を挿入
			preparedStatement.setString(1, item_transaction_id);
			preparedStatement.setString(2, user_master_id);
			ResultSet resultSet = preparedStatement.executeQuery();
//resultSet内のデータを参照順で繰り返し、MyPageDTOにsetしていく
			while(resultSet.next()) {
				MyPageDTO dto = new MyPageDTO();
				dto.setId(resultSet.getString("id"));
				dto.setItemName(resultSet.getString("item_name"));
				dto.setTotalPrice(resultSet.getString("total_price"));
				dto.setTotalCount(resultSet.getString("total_count"));
				dto.setPayment(resultSet.getString("pay"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				dto.setImg_address("img_address");
//参照結果が保存された変数dtoをmyPageDTO(リスト)へと格納する
				myPageDTO.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return myPageDTO;
	}
//buyItemHistoryDelete()の定義：購入履歴をDBから削除するメソッド
	public int buyItemHistoryDelete (String item_transaction_id, String user_master_id) throws SQLException {
//変数sqlにSELECT文を格納
		String sql = "DELETE FROM user_buy_item_transaction WHERE item_transaction_id  = ? AND user_master_id  = ?";
		PreparedStatement preparedStatement;
//返り値intの値を代入する
		int result =0;
		try {
//sql文を実行し、tableを削除した後にexecuteUpdate()で更新回数を返している
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, item_transaction_id);
			preparedStatement.setString(2, user_master_id);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return result;
	}
}

