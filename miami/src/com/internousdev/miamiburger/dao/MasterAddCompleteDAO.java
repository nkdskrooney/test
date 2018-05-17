package com.internousdev.miamiburger.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.miamiburger.util.DBConnector;
import com.internousdev.miamiburger.util.DateUtil;

public class MasterAddCompleteDAO{

	private DateUtil dateUtil = new DateUtil();

	public int getMaxProductId() {

		int maxProductId = -1;

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "SELECT MAX(product_id) AS id FROM product_info";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				maxProductId = rs.getInt("id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return maxProductId;
	}

	public int cerateProduct(
				int productId,
				String productName,
				String productNameKana,
				String productDescription,
				int categoryId,
				int price,
				String releaseDate,
				int Status,
				String userImageFileName
			) throws SQLException {
		int check = 0;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		try {
			String sql =
				"INSERT INTO product_info ("
				+ "product_id, "
				+ "product_name, "
				+ "product_name_kana, "
				+ "product_description, "
				+ "category_id, "
				+ "price,"
				+ "release_date,"
				+ "status,"
				+ "image_file_path, "
				+ "image_file_name, "
				+ "regist_date)"
				+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setInt(1, productId);
			preparedStatement.setString(2, productName);
			preparedStatement.setString(3, productNameKana);
			preparedStatement.setString(4, productDescription);
			preparedStatement.setInt(5, categoryId);
			preparedStatement.setInt(6, price);
			preparedStatement.setString(7, releaseDate);
			preparedStatement.setInt(8, Status);
			preparedStatement.setString(9, userImageFileName);
			preparedStatement.setString(10, userImageFileName);
			preparedStatement.setString(11, dateUtil.getDate());

			check = preparedStatement.executeUpdate();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return check;
	}
}