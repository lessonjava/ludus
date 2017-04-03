/**
 *
 */
package lessonjava.ludus.dao;

import java.sql.Connection;
import java.util.ArrayList;

import lessonjava.ludus.dto.ItemDTO;
import lessonjava.ludus.util.DBConnector;

/**
 * 商品を一覧表示するためのクラス
 * @author KAZUHIRO UMINO
 *
 */
public class ItemListDAO {

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
	 * 商品一覧画面において、検索した商品をDBから抽出するメゾット
	 * @return searchList
	 */
	public ArrayList<ItemDTO> select(String itemGenre) {

		DBConnecteor db = new DBConnector("ludus");
		Connection con = db.getConnection();
		String sql;
		
		
	}
}
