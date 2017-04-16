package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.util.DBConnector;

public class LoginOutDAO {	/**

	 * 多重ログインを防ぐため、ログインフラグをtrueにUPDATEする
	 * @param email アドレス
	 * @param password パスワード
	 * @return count 更新した件数
	 */
	public int update(String email, String password) {
		int count = 0;
		DBConnector db = new DBConnector("ludus");
		Connection con = db.getConnection();
		String sql = "UPDATE users SET login_flg = true WHERE phone_email = ? AND password = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			count = ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	/**
	 * ログアウトするユーザーのlogin_flgをfalseにするクラス
	 * @param userId 顧客番号
	 * @return count login_flgをUPDATEした数
	 */
	public int update(int userId) {
		int count = 0;
		DBConnector db = new DBConnector("ludus");
		Connection con = db.getConnection();
		String sql = "UPDATE users SET login_flg = false WHERE user_id = ?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			count = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				con.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}
}
