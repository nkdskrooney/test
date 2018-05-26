package com.internousdev.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.internousdev.toolbox.dto.ItemDTO;
import com.internousdev.toolbox.util.DBConnector;

public class ItemDAO {

//商品情報を格納するArrayListのインスタンスを作成
	private ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
	private ItemDTO itemDTO ;
	private DBConnector db = new DBConnector();
	private Connection con = null;

//全ての商品情報を取得するメソッド
	public ArrayList<ItemDTO> getItemInfo() {
		con = db.getConnection();
		String sql = "SELECT *  FROM item_info";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setId(rs.getInt("id"));
				itemDTO.setItemId(rs.getInt("item_id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemNameKana(rs.getString("item_name_kana"));
				itemDTO.setCategoryId(rs.getInt("category_id"));
				itemDTO.setPrice(rs.getInt("price"));
				itemDTO.setStock(rs.getInt("stock"));
				itemDTO.setImageFilePath(rs.getString("image_file_path"));
				itemDTO.setReleaseDate(rs.getString("release_date"));
				itemDTO.setRegistDate(rs.getString("regist_date"));
				itemDTO.setUpdateDate(rs.getString("update_date"));

				itemList.add(itemDTO);
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
		return itemList;
	}

//個々の商品情報を取得するメソッド
	public ItemDTO getItemInfo(int itemId) {
		con = db.getConnection();
		String sql = "SELECT * FROM item_info WHERE id = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, itemId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setId(rs.getInt("id"));
				itemDTO.setItemId(rs.getInt("item_id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemNameKana(rs.getString("item_name_kana"));
				itemDTO.setCategoryId(rs.getInt("category_id"));
				itemDTO.setPrice(rs.getInt("price"));
				itemDTO.setStock(rs.getInt("stock"));
				itemDTO.setImageFilePath(rs.getString("image_file_path"));
				itemDTO.setReleaseDate(rs.getString("release_date"));
				itemDTO.setRegistDate(rs.getString("regist_date"));
				itemDTO.setUpdateDate(rs.getString("update_date"));
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
