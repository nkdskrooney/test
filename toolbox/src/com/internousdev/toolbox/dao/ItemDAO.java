package com.internousdev.toolbox.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.toolbox.dto.ItemDTO;
import com.internousdev.toolbox.util.DBConnector;

public class ItemDAO implements SessionAware{
//session情報
	public Map<String,Object>session;
//商品情報を格納するArrayListのインスタンスを作成
	private ArrayList<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	private ItemDTO itemDTO ;
	private DBConnector db = new DBConnector();
	private Connection con = null;

//全ての商品情報を取得するメソッド
	public ArrayList<ItemDTO> getItemInfo() {
		con = db.getConnection();
		String sql = "SELECT id ,item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date  FROM item_info";
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
				itemDTO.setImageFilePath(rs.getString("release_date"));
				itemDTO.setImageFilePath(rs.getString("regist_date"));
				itemDTO.setImageFilePath(rs.getString("update_date"));

				itemDTOList.add(itemDTO);
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
		return itemDTOList;
	}

//個々の商品情報を取得するメソッド
	public ItemDTO getItemInfo(int itemId) {
		con = db.getConnection();
		String sql = "SELECT SELECT id ,item_id, item_name, item_name_kana, category_id, price, stock, image_file_path, release_date, regist_date, update_date FROM item_info WHERE id = ?";
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
				itemDTO.setImageFilePath(rs.getString("release_date"));
				itemDTO.setImageFilePath(rs.getString("regist_date"));
				itemDTO.setImageFilePath(rs.getString("update_date"));
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

//以下、getter/setter
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO 自動生成されたメソッド・スタブ

	}
	public ArrayList<ItemDTO> getItemDTOList() {
		return itemDTOList;
	}

	public void setItemDTOList(ArrayList<ItemDTO> itemDTOList) {
		this.itemDTOList = itemDTOList;
	}

	public ItemDTO getItemDTO() {
		return itemDTO;
	}

	public void setItemDTO(ItemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}

	public Map<String, Object> getSession() {
		return session;
	}


}
