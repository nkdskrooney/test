package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.util.DBConnector;

public class CartItemDAO {
	public ItemDTO getCart(String cart_id) {
		DBConnector dbConnector= new DBConnector();
		Connection con = dbConnector.getConnection();
		String sql = "SELECT id ,item_transaction_id, total_price, total_count ,payment ,img_address, cart_id, insert_date "
				+ "FROM cart_item_transaction WHERE id = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cart_id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setItemId(rs.getInt("id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemPrice(rs.getInt("item_price"));
				itemDTO.setItemStock(rs.getInt("item_stock"));
				itemDTO.setImgAddress(rs.getString("img_address"));

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
		return itemDTO;
	}
}
