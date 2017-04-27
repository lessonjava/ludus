package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.util.DBConnector;

import lessonjava.ludus.dto.PurchaseDTO;
import lessonjava.ludus.dto.UsersDTO;



public class SelectUsersDAO {
	private int userId;
	private String phoneEmail;
	private String password;
	private ArrayList<UsersDTO> usersList = new ArrayList<>();

	public SelectUsersDAO(String phoneEmail, String password) {

		this.phoneEmail = phoneEmail;
		this.password = password;
	}

	public SelectUsersDAO(int userId){
		this.userId = userId;
	}

	private PreparedStatement createPreparedStatement(Connection con) throws SQLException {

		if (this.phoneEmail!= null && this.password!= null) {
			String sql = "select * from users where phone_email=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, this.phoneEmail);
			ps.setString(2, this.password);
			return ps;
		} else if (userId != 0) {
			String sql = "select * from users where user_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, this.userId);
			return ps;
		} else {
			return null;
		}
	}

	public ArrayList<UsersDTO> select() {
		DBConnector db = new DBConnector("ludus");
		try (Connection con = db.getConnection();
				PreparedStatement ps = createPreparedStatement(con);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				UsersDTO dto = new UsersDTO();
				dto.setUserID(rs.getInt("user_id"));
				dto.setPassword(rs.getString("password"));
				dto.setNameKanji(rs.getString("name_kanji"));
				dto.setNameHira(rs.getString("name_hira"));
				dto.setPostal(rs.getString("postal"));
				dto.setAddress1(rs.getString("address1"));
				dto.setAddress2(rs.getString("address2"));
				dto.setPhoneNumber(rs.getString("phone_number"));
				dto.setPhoneEmail(rs.getString("phone_email"));
				dto.setLoginFlg(rs.getBoolean("login_flg"));
				dto.setUserFlg(rs.getInt("user_flg"));
				usersList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return usersList;
	}

	public List<PurchaseDTO> select1(int userId) {
		DBConnector db = new DBConnector("ludus");
		Connection con = db.getConnection();
		PurchaseDTO purchase_dto = new PurchaseDTO();
		List<PurchaseDTO> purchaseDtoList = new ArrayList<PurchaseDTO>();
		PreparedStatement ps = null;
		String sql = "SELECT * FROM purchase WHERE user_id = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				purchase_dto = new PurchaseDTO();
				purchase_dto.setPurchaseDate(rs.getString("purchase_date"));
				purchase_dto.setItemName(rs.getString("item_name"));
				purchase_dto.setOrderCount(rs.getInt("order_count"));
				purchase_dto.setSubtotal(rs.getFloat("subtotal"));
				purchaseDtoList.add(purchase_dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return purchaseDtoList;
	}

}
