package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.util.DBConnector;

public class ItemDAO implements SessionAware{

	private DBConnector dbConnector= new DBConnector();
	private Connection con = dbConnector.getConnection();
	private ItemDTO itemDTO ;
	private ArrayList<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();
	public Map<String,Object>session;


	public ArrayList<ItemDTO> getItemInfo() {
		String sql = "SELECT id ,item_name, item_price, item_stock ,img_address FROM item_info_transaction";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setItemId(rs.getInt("id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemPrice(rs.getInt("item_price"));
				itemDTO.setItemStock(rs.getInt("item_stock"));
				itemDTO.setImgAddress(rs.getString("img_address"));
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


	public ItemDTO getItemInfo(int id,String payment, int PurchaseNumber ) {
		String sql = "SELECT id ,item_name, item_price, item_stock ,img_address FROM item_info_transaction WHERE id = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setItemId(rs.getInt("id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemPrice(rs.getInt("item_price"));
				itemDTO.setItemStock(rs.getInt("item_stock"));
				itemDTO.setImgAddress(rs.getString("img_address"));
				itemDTO.setPayment(payment);
				itemDTO.setPurchaseNumber(PurchaseNumber);

				itemDTO.setTotalPrice(rs.getInt("item_price")* PurchaseNumber);


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


	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO 自動生成されたメソッド・スタブ

	}


}
