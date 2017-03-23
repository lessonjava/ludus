package lessonjava.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import lessonjava.util.DBConnector;


public class SignUpDAO {
	public int insert(String password,String nameKanji, String nameHira, String postal, String address1, String address2, String phoneNumber, String phoneEmail) {
		DBConnector db =new DBConnector();
		Connection con = db.getConnection("test");
		int count = 0;
		String sql = "insert into users(password,name_kanji,name_hira,postal,address1,address2,phone_number,phone_email)values(?,?,?,?,?,?,?,?)";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, nameKanji);
			ps.setString(3, nameHira);
			ps.setString(4, postal);
			ps.setString(5, address1);
			ps.setString(6, address2);
			ps.setString(7, phoneNumber);
			ps.setString(8, phoneEmail);
			count = ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return count;

}
}