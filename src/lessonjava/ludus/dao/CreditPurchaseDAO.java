package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.CartDTO;
import lessonjava.ludus.dto.UsersDTO;
import lessonjava.ludus.util.ConnectionSupport;

/**
 * 購入履歴テーブルに情報をインサートするクラス
 */
public class CreditPurchaseDAO extends ConnectionSupport {

	/**
	 * mysqlのludusに接続
	 */
	Connection ludusCon = new DBConnector("ludus").getConnection();

	/**
	 * mysqlのvisa,mastercard,americanexpressいずれかに接続
	 */
	Connection creditCon = null;

	/**
	 *  SQL文を表すオブジェクト
	 */
	PreparedStatement ps1 = null;

	/**
	 *  SQL文を表すオブジェクト
	 */
	PreparedStatement ps = null;

	public CreditPurchaseDAO(int creditBrand) {
		String brandName = null;
		if (creditBrand == 1) {
			brandName = "visa";
		} else if (creditBrand == 2) {
			brandName = "mastercard";
		} else if (creditBrand == 3) {
			brandName = "americanexpress";
		}
		this.creditCon = new DBConnector(brandName).getConnection();
	}


	/**
	 * クレジットカード会社に購入履歴をインサートするメソッド
	 *
	 * @param dto ＤＴＯ
	 * @param creditBrand クレジットの種類
	 * @param cartList カートリスト
	 * @throws SQLException ＳＱＬ
	 */
	public void CreditPurchaseHistory(UsersDTO dto, int creditBrand, List<CartDTO> cartList) throws SQLException {
		int payment = 0;
		for (CartDTO cart : cartList) {
			payment += cart.getSubtotal() * cart.getOrderCount();
		}
		String sql = "insert into user_history(login_id, corporation_name, spend, payment, name_e) values (?,  'ludus', ?, ?, ?)";
		if (creditBrand == 1) {
			sql = "insert into user_history(login_id, office_name, spend, payment, last_name, first_name) values (?, 'ludus', ?, ?, ?, ?)";
		}
		ps1 = creditCon.prepareStatement(sql);
		creditCon.setAutoCommit(false);
		ps1.setString(1, dto.getPassword());
		ps1.setInt(2, payment);
		ps1.setInt(3, payment);
		ps1.setString(4, dto.getNameKanji());
		if (creditBrand == 1) {
			ps1.setString(5, dto.getNameHira());
		}
		ps1.executeUpdate();
	}

	/**
	 * ludusに購入履歴をインサートするメソッド
	 *
	 * @param userId ユーザー番号
	 * @param creditBrand クレジットの種類
	 * @param shippingAddress お届け先
	 * @param cartList カートリスト
	 * @throws SQLException ＳＱＬ
	 */
	public void LudusPurchaseHistory(int userId, int creditBrand, String shippingAddress, List<CartDTO> cartList)
			throws SQLException {
		String sql = "INSERT INTO purchase(user_id, item_id, item_name, order_count, subtotal, payment_method, shipping_address) VALUES(?, ?, ?, ?, ?, ?, ?)";
		ludusCon.setAutoCommit(false);
		for (int i = 0; i < cartList.size(); i++) {
			ps = ludusCon.prepareStatement(sql);
			ps.setInt(1, userId);
			ps.setInt(2, cartList.get(i).getItemId());
			ps.setString(3, cartList.get(i).getItemName());
			ps.setInt(4, cartList.get(i).getOrderCount());
			ps.setFloat(5, cartList.get(i).getOrderCount() * cartList.get(i).getSubtotal());
			ps.setInt(6, creditBrand);
			ps.setString(7, shippingAddress);
			ps.executeUpdate();
		}

	}

	/**
	 * commitとcloseを実行するメソッド
	 */
	public void commit() {
		commit(ludusCon);
		commit(creditCon);
		closePs(ps1);
		closePs(ps);
		closeCon(ludusCon);
		closeCon(creditCon);
	}

	/**
	 * rollbackとcloseを実行するメソッド
	 */
	public void rollback() {
		rollback(ludusCon);
		rollback(creditCon);
		closePs(ps1);
		closePs(ps);
		closeCon(ludusCon);
		closeCon(creditCon);
	}

}
