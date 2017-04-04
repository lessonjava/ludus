/**
 *
 */
package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.ItemDTO;


/**
 * 商品を一覧表示するためのクラス
 * @author KAZUHIRO UMINO
 */
public class GoItemListDAO {

	/**
	 * ジャンル1の商品を検索するリスト
	 */
	public ArrayList<ItemDTO> searchList = new ArrayList<ItemDTO>();
	/**
	 * ジャンル2の商品を検索するリスト
	 */
	public ArrayList<ItemDTO> searchList2 = new ArrayList<ItemDTO>();
	/**
	 * ジャンル3の商品を検索するリスト
	 */
	public ArrayList<ItemDTO> searchList3 = new ArrayList<ItemDTO>();
	/**
	 * ジャンル4の商品を検索するリスト
	 */
	public ArrayList<ItemDTO> searchList4 = new ArrayList<ItemDTO>();


	/**
	 * 商品一覧画面において、検索したDBから抽出するメソッド
	 * @return searchList
	 */
	public ArrayList<ItemDTO> select(String itemGenre)
	{
		DBConnector db  = new  DBConnector("ludus");
		Connection con = db.getConnection();
		String sql;
			sql = "SELECT * FROM item WHERE item_genre = ?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemGenre);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ItemDTO dto = new ItemDTO();
				dto.setItemId(rs.getInt("item_id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemGenre(rs.getString("item_genre"));
				dto.setItemFeature(rs.getInt("item_feature"));
				dto.setPrice(rs.getFloat("price"));
				dto.setItemCatch(rs.getString("item_catch"));
				dto.setItemImg01(rs.getString("item_img01"));
				dto.setItemImg02(rs.getString("item_img02"));
				dto.setItemImg03(rs.getString("item_img03"));
				dto.setStock(rs.getInt("stock"));
				searchList.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	return searchList;

	}
}
