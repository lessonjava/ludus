/**
 *
 */
package lessonjava.ludus.action;

import java.net.UnknownHostException;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.InquiryDAO;

/**
 * お問い合わせ処理を行うアクションクラス
 *
 * @author KEIGO NISHIMORI
 * @since 2017/04/16
 * @version 1.0
 */
public class InquiryAction extends ActionSupport {

	/**
	 * お問い合わせ項目
	 */
	private int genre;

	/**
	 * お問い合わせ者名
	 */
	private String name;

	/**
	 * メールアドレス
	 */
	private String email;

	/**
	 * お問い合わせ内容
	 */
	private String contents;

	/**
	 * 実行メソッド
	 * お問い合わせ送信処理を行う
	 */
	public String execute() {
		String result = ERROR;

		InquiryDAO dao = new InquiryDAO();
		try {
			if (dao.mongoInsert(genre, name, email, contents)) {
				result = SUCCESS;
				return result;
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * @return genre
	 */
	public int getGenre() {
		return genre;
	}

	/**
	 * @param genre セットする genre
	 */
	public void setGenre(int genre) {
		this.genre = genre;
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name セットする name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email セットする email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return contents
	 */
	public String getContents() {
		return contents;
	}

	/**
	 * @param contents セットする contents
	 */
	public void setContents(String contents) {
		this.contents = contents;
	}


}
