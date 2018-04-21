package com.internousdev.listening.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.listening.dto.ItemDTO;
import com.internousdev.listening.util.DBConnector;

public class ItemDAO {

	private DBConnector dbConnector= new DBConnector();
	private Connection con = dbConnector.getConnection();
	private ItemDTO itemDTO ;
	private List<ItemDTO> itemDTOList = new ArrayList<ItemDTO>();

	public List<ItemDTO> getItemInfo() {
		String sql = "SELECT id ,item_name, item_price, item_stock FROM item_info_transaction";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				itemDTO = new ItemDTO();
				itemDTO.setId(rs.getInt("id"));
				itemDTO.setItemName(rs.getString("item_name"));
				itemDTO.setItemPrice(rs.getString("item_price"));
				itemDTO.setItemStock(rs.getInt("item_stock"));

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


}