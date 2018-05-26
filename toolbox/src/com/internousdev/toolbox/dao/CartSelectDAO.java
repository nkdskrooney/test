package com.internousdev.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.toolbox.dto.CartDTO;
import com.internousdev.toolbox.util.DBConnector;

public class CartSelectDAO {
	DBConnector db = new DBConnector();
	Connection con = null;

	//未ログイン時のtemp_user_idに対応するカート情報を取得する。
	public ArrayList<CartDTO> CartSelect(String tempUserId){
		CartDTO dto;
		ArrayList<CartDTO> cartList = new ArrayList<>();
		con = db.getConnection();
		String sql ="SELECT ci.id, ci.user_id, ci.temp_user_id, ci.item_id, ii.item_name, ii.item_name_kana, ii.item_description, ii.category_id, ii.price, ci.count, ii.stock, ii.image_file_path, ii.release_date"
					+ "FROM cart_info ci LEFT JOIN item_info ii ON ci.item_id = ii.item_id WHERE ci.temp_user_id=?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,tempUserId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				dto = new CartDTO();
				dto.setCartId(rs.getInt("ci.id"));
				dto.setUserId(rs.getString("ci.user_id"));
				dto.setTemp_user_id(rs.getString("ci.temp_user_id"));
				dto.setItemId(rs.getInt("ci.item_id"));
				dto.setItemName(rs.getString("ii.item_name"));
				dto.setItemNameKana(rs.getString("ii.item_name_kana"));
				dto.setCategoryId(rs.getString("ii.category_id"));
				dto.setPrice(rs.getInt("ii.price"));
				dto.setCount(rs.getInt("ci.count"));
				dto.setStock(rs.getInt("ii.stock"));
				dto.setImage_file_path(rs.getString("ii.image_file_path"));
				dto.setRelease_date(rs.getString("ii.release_date"));

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
	public ArrayList<CartDTO> CartSelect(String userId, String tempUserId){
		CartDTO dto;
		ArrayList<CartDTO> cartList = new ArrayList<>();
		con = db.getConnection();
		String sql ="SELECT ci.id, ci.user_id, ci.temp_user_id, ci.item_id, ii.item_name, ii.item_name_kana, ii.item_description, ii.category_id, ii.price, ci.count, ii.stock, ii.image_file_path, ii.release_date"
					+ "FROM cart_info ci LEFT JOIN item_info ii ON ci.item_id = ii.item_id WHERE ci.user_id=? OR ci.temp_user_id=?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userId);
			ps.setString(2,tempUserId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				dto = new CartDTO();
				dto.setCartId(rs.getInt("ci.id"));
				dto.setUserId(rs.getString("ci.user_id"));
				dto.setTemp_user_id(rs.getString("ci.temp_user_id"));
				dto.setItemId(rs.getInt("ci.item_id"));
				dto.setItemName(rs.getString("ii.item_name"));
				dto.setItemNameKana(rs.getString("ii.item_name_kana"));
				dto.setCategoryId(rs.getString("ii.category_id"));
				dto.setPrice(rs.getInt("ii.price"));
				dto.setCount(rs.getInt("ci.count"));
				dto.setStock(rs.getInt("ii.stock"));
				dto.setImage_file_path(rs.getString("ii.image_file_path"));
				dto.setRelease_date(rs.getString("ii.release_date"));

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
