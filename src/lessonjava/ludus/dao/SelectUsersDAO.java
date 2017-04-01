package lessonjava.ludus.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lessonjava.ludus.dto.UsersDTO;
import lessonjava.ludus.util.DBConnector;

public class SelectUsersDAO {
	private ArrayList<UsersDTO> usersList = new ArrayList<>();

	public ArrayList<UsersDTO> select(String phoneEmail, String password) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection("test");
		String sql = "select * from users where phone_email=? and password=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, phoneEmail);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				UsersDTO dto=new UsersDTO();
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
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return usersList;
	}
}