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
				dto.setPhoneEmail(rs.getString("phone_email"));
				dto.setPassword(rs.getString("password"));
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