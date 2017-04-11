package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.ItemDTO;

/**
 * カートインサート＆アップデート用クラス
 *
 * @author KEIGO NISHIMORI
 * @since 2017/04/05
 * @version 1.0
 */
public class CartUpdateDAO {

	/**cartテーブルにinsertまたはupdateするためのメソッド
	 * @param userId
	 * @param itemId
	 * @param orderNumber
	 * @param isInsert
	 */
	public void exeUpdate(int userId, int itemId, int orderNumber, boolean isInsert) {
		DBConnector db = new DBConnector("ludus");
		try (Connection con = db.getConnection();
				PreparedStatement ps = createPreparedStatement(con, userId, itemId, orderNumber, isInsert);) {
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**PreparedStatementに値をセットして返すメソッド
	 * @param con
	 * @param userId
	 * @param itemId
	 * @param orderNumber
	 * @param isInsert
	 * @return Ps
	 * @throws SQLException
	 */
	private PreparedStatement createPreparedStatement(Connection con, int userId, int itemId, int orderNumber,
			boolean isInsert) throws SQLException {
		GoItemDetailDAO itemDao = new GoItemDetailDAO();
		ArrayList<ItemDTO> item = itemDao.select(itemId);
		String sql;
		if (isInsert) {
			sql = "insert into cart (order_count,user_id,item_id,item_name,subtotal,item_Img01) values (?,?,?,?,?,?)";
		} else {
			sql = "update cart set order_count=? where user_id=? and item_id=?" ;
		}

		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, orderNumber);
		ps.setInt(2, userId);
		ps.setInt(3, itemId);
		if (isInsert) {
			ps.setString(4, item.get(0).getItemName());
			ps.setFloat(5, item.get(0).getPrice());
			ps.setString(6, item.get(0).getItemImg01());
		}
		return ps;
	}

}
