/**
 *
 */
package lessonjava.ludus.dao;

import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;

import lessonjava.ludus.util.MongoDBConnector;/**
 * お問い合わせ画面で入力されたデータをDBにINSERTするクラス
 * @author KEIGO NISHIMORI
 * @since 2017/04/16
 * @version 1.0
 */
public class InquiryDAO {

	/**
	 * mongoDBにデータをINSERTする
	 * @param inqGenre お問い合わせ項目
	 * @param inqName お問い合わせ者名
	 * @param inqEmail メールアドレス
	 * @param inqTitle お問い合わせ件名
	 * @param inqContent お問い合わせ内容
	 * @return INSERT真偽値
	 * @throws UnknownHostException 呼び出し元で例外処理を行う
	 */
	public boolean mongoInsert(int genre, String name, String email,String content) throws UnknownHostException{

		boolean result = false;

		/* 管理者が日本人であることを想定しているため、
		   日本のタイムゾーンで現在の日付を取得 */
		Calendar cal = Calendar.getInstance();
		TimeZone tz = TimeZone.getTimeZone("Asia/Tokyo");
		cal.setTimeZone(tz);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String dt = sdf.format(cal.getTime());

		//mongoへの接続
		MongoDBConnector con = new MongoDBConnector();
		DB db = con.getConnection();
		DBCollection coll = db.getCollection("inquiry");
		BasicDBObject input = new BasicDBObject();

		input.put("genre", genre);
		input.put("name", name);
		input.put("email", email);
		input.put("content", content);
		input.put("reg_date", dt);

		coll.insert(input);
		result = true;

		return result;
	}
}
