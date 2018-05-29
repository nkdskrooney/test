package com.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.toolbox.dto.CartDTO;
import com.toolbox.util.DBConnector;

public class CartSelectDAO {
	DBConnector db = new DBConnector();
	Connection con = null;

	//未ログイン時のtemp_user_idに対応するカート情報を取得する。
	public ArrayList<CartDTO> tempCartSelect(String tempUserId){
		CartDTO dto;
		ArrayList<CartDTO> cartList = new ArrayList<>();
		con = db.getConnection();
		String sql ="SELECT c.id, c.temp_user_id, c.item_id, i.item_name, i.item_name_kana, i.category_id, i.price, c.count, i.stock, i.image_file_path, i.release_date"
					+ " FROM cart_info c LEFT JOIN item_info i "
					+ " ON c.item_id = i.item_id "
					+ " WHERE c.temp_user_id = ? ";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,tempUserId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				dto = new CartDTO();
				dto.setCartId(rs.getInt("c.id"));
				dto.setTemp_user_id(rs.getString("c.temp_user_id"));
				dto.setItemId(rs.getInt("c.item_id"));
				dto.setItemName(rs.getString("i.item_name"));
				dto.setItemNameKana(rs.getString("i.item_name_kana"));
				dto.setCategoryId(rs.getString("i.category_id"));
				dto.setPrice(rs.getInt("i.price"));
				dto.setCount(rs.getInt("c.count"));
				dto.setStock(rs.getInt("i.stock"));
				dto.setImageFilePath(rs.getString("i.image_file_path"));
				dto.setRelease_date(rs.getString("i.release_date"));

				//合計金額を計算後　DTOに挿入
				int count = dto.getCount();
				int price = dto.getPrice();
				int totalPrice = count * price;
				dto.setTotalPrice(totalPrice);

				cartList.add(dto);
			}

		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			if(con != null){
				try{
					con.close();
				}catch (SQLException e){
					e.printStackTrace();
				}
			}
		}
		return cartList;
	}

//ログイン時にuser_idもしくはtemp_user_idに対応するカート情報を取得する。
	public ArrayList<CartDTO> CartSelect(String userId){
		CartDTO dto;
		ArrayList<CartDTO> cartList = new ArrayList<>();
		con = db.getConnection();

		String sql ="SELECT c.id, c.user_id, c.temp_user_id, c.item_id, i.item_name, i.item_name_kana, i.category_id, i.price, c.count, i.stock, i.image_file_path, i.release_date"
				+ " FROM cart_info c LEFT JOIN item_info i "
				+ " ON c.item_id = i.item_id "
				+ " WHERE c.user_id=? ";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userId);

			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				dto = new CartDTO();
				dto.setCartId(rs.getInt("c.id"));
				dto.setUserId(rs.getString("c.user_id"));
				dto.setTemp_user_id(rs.getString("c.temp_user_id"));
				dto.setItemId(rs.getInt("c.item_id"));
				dto.setItemName(rs.getString("i.item_name"));
				dto.setItemNameKana(rs.getString("i.item_name_kana"));
				dto.setCategoryId(rs.getString("i.category_id"));
				dto.setPrice(rs.getInt("i.price"));
				dto.setCount(rs.getInt("c.count"));
				dto.setStock(rs.getInt("i.stock"));
				dto.setImageFilePath(rs.getString("i.image_file_path"));
				dto.setRelease_date(rs.getString("i.release_date"));

				//合計金額を計算後　DTOに挿入
				int count = dto.getCount();
				int price = dto.getPrice();
				int totalPrice = count * price;
				dto.setTotalPrice(totalPrice);

				cartList.add(dto);
			}

		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			if(con != null){
				try{
					con.close();
				}catch (SQLException e){
					e.printStackTrace();
				}
			}
		}
		return cartList;
	}

}
