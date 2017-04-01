package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lessonjava.ludus.dto.UsersDTO;
import lessonjava.ludus.util.DBConnector;

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
		DBConnector db = new DBConnector();
		try (Connection con = db.getConnection("test");
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

}
