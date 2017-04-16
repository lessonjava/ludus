/**
 *
 */
package lessonjava.ludus.util;

import java.net.UnknownHostException;

import com.mongodb.DB;
import com.mongodb.MongoClient;

/**
 * MongoDBに接続するためのクラス
 * @author KEIGO NISHIMORI
 * @since 2017/04/16
 * @version 1.0
 */
public class MongoDBConnector {

	/**
	 * クライアントの初期化
	 */
	private MongoClient client = null;

	/**
	 * DB接続メソッド
	 * DBとの接続を確立し、DBインスタンスを返す
	 * @return cb
	 */
	public DB getConnection(){

		try {
			client = new MongoClient("localhost", 27017);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		DB db =client.getDB("ludus");

		return db;
	}

	/**
	 * コネクションをクローズするメソッド
	 */
	public void closeConnection() {
		client.close();
	}
}
