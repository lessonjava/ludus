/**
 *
 */
package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lessonjava.ludus.dto.ItemDTO;
import lessonjava.ludus.util.DBConnector;


/**
 * @author KAZUHIRO UMINO
 *
 */
public class GoItemDetailDAO {
	/**
	 *商品IDで商品詳細を取得する
	 * @param id
	 * @return itemList
	 */
	public ArrayList<ItemDTO> select(int id)
	{
		DBConnector db = new DBConnector("ludus");
		Connection con = db.getConnection();
		ItemDTO dto = new ItemDTO();
		ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();
		String sql = "SELECT * FROM item WHERE item_id=?";
		try{
			PreparedStatement ps = con.prepareStatement(sql) ;
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				dto.setItemId(rs.getInt("item_id"));
				dto.setItemDetail(rs.getString("item_detail"));
				dto.setItemImg01(rs.getString("item_img01"));
				dto.setItemImg02(rs.getString("item_img02"));
				dto.setItemImg03(rs.getString("item_img03"));
				dto.setPrice(rs.getFloat("price"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemGenre(rs.getString("item_genre"));
				dto.setItemFeature(rs.getInt("item_feature"));
				dto.setItemCatch(rs.getString("item_catch"));
				dto.setStock(rs.getInt("stock"));
				itemList.add(dto);
			}
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		} try {
		con.close();
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		}
		return itemList;
			}
	}