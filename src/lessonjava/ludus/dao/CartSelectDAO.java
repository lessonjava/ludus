package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.CartDTO;

/**cartテーブルから検索するためのクラス
 * @author KEIGO NISHIMORI
 *@ver 1.0
 */
public class CartSelectDAO {

	/**cartテーブルから情報をとってくるメソッド
	 * @param userId
	 * @param itemId
	 * @param all
	 * @return
	 */
	public List<CartDTO> selectCart(int userId,int itemId,Boolean isall) {
		DBConnector db = new DBConnector("ludus");
		 List<CartDTO> cartList = new ArrayList<CartDTO>();
		try (Connection con = db.getConnection();
				PreparedStatement ps = createPreparedStatement(con, userId,itemId,isall);
				ResultSet rs = ps.executeQuery()) {
			while(rs.next()){
				CartDTO cartDto = new CartDTO();
				cartDto.setUserId(rs.getInt("user_id"));
				cartDto.setItemId(rs.getInt("item_id"));
				cartDto.setItemName(rs.getString("item_name"));
				cartDto.setOrderCount(rs.getInt("order_count"));
				cartDto.setSubtotal(rs.getFloat("subtotal"));
				cartDto.setDeleteFlg(rs.getBoolean("delete_flg"));
				cartDto.setItemImg01(rs.getString("item_img01"));
				cartDto.setRegistration(rs.getString("registration_date"));
				cartDto.setUpdatedDate(rs.getString("updated_date"));
				cartList.add(cartDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cartList;
	}

	/**PreparedStatementに値をセットするためのメソッド
	 * @param con
	 * @param userId
	 * @param itemId
	 * @param all
	 * @return　PS
	 * @throws SQLException
	 */
	private PreparedStatement createPreparedStatement(Connection con, int userId,int itemId ,boolean isAll) throws SQLException {
		String sql = "select * from cart where user_id = ?";
		if(itemId!=0&&!(isAll)){
			sql += " "+"and item_id = ?";
		}
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, userId);
		if(itemId!=0&&!(isAll)){
			ps.setInt(2, itemId);
		}
		return ps;
	}

	/**ログインしてないときにカート内に商品があった場合にjspに表示するためのメソッド
	 * @param cartOrder
	 * @return CartList
	 */
	public List<CartDTO> displayCart(Map<Integer, Integer> cartOrder) {
			Connection con = null;
			DBConnector db = new DBConnector("ludus");
			con = db.getConnection();
			ArrayList<CartDTO> CartList = new ArrayList<CartDTO>();
			String sql = "select * from item where item_id=?";
			try{
				PreparedStatement ps = con.prepareStatement(sql) ;
				for(Map.Entry<Integer, Integer> entry : cartOrder.entrySet()) {
				ps.setInt(1, ((int)entry.getKey()));
				ResultSet rs = ps.executeQuery();
				rs.next();
					CartDTO dto =new CartDTO();
					dto.setItemId(rs.getInt("item_id"));
					dto.setSubtotal(rs.getFloat("price"));
					dto.setItemName(rs.getString("item_name"));
					dto.setOrderCount(entry.getValue());
					dto.setItemImg01(rs.getString("item_img01"));
					CartList.add(dto);
				}
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (con != null){
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
			return CartList;
		}
}
