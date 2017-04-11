package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.CartDTO;

/**
 * cartテーブルにある商品情報を削除するクラス
 *
 * @author KEIGO NISHIMORI
 * @ver 1.0
 */
public class CartDeleteDAO {

	/**
	 * cartテーブルにある商品情報を削除するメソッド
	 *
	 * @param userId
	 * @param itemId
	 */
	public void delete(int userId, int itemId) {
		DBConnector dbCon = new DBConnector("ludus");
		Connection con = dbCon.getConnection();
		String sql = "delete from cart where user_id = ?";
		if (itemId != 0) {
			sql += " " + "&& item_id= ?";
		}
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			if (itemId != 0) {
				ps.setInt(2, itemId);
			}
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public int itemUpdate(List<CartDTO> cartList) {
		int processing = 0;
		DBConnector db = new DBConnector("ludus");
		Connection con = db.getConnection();
		String sql = "update item set stock = stock - ? where item_id=?";
		try {
			for (CartDTO cart : cartList) {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, cart.getOrderCount());
				ps.setInt(2, cart.getItemId());
				processing += ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return processing;
	}
}
