package lessonjava.ludus.action;

import java.net.UnknownHostException;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.SignUpDAO;

public class SignUpAction extends ActionSupport{

	/**
	 * パスワード
	 */
	private String password;

	/**
	 * 名前漢字
	 */
	private String nameKanji;

	/**
	 * 名前ひらがな
	 */
	private String nameHira;

	/**
	 * 郵便番号
	 */
	private String zip01;

	/**
	 * 住所（都道府県・市区町村）
	 */
	private String addr11;

	/**
	 * 住所（番地）
	 */
	private String address2;

	/**
	 * 携帯番号
	 */
	private String phoneNumber;

	/**
	 * メールアドレス
	 */
	private String phoneEmail;


	public String execute() throws UnknownHostException {
		String result = ERROR;

		SignUpDAO dao = new SignUpDAO();
		int count = dao.insert(password, nameKanji, nameHira, zip01, addr11, address2, phoneNumber, phoneEmail);
		if(count!=0){
			result = SUCCESS;
		}
		return result;

	}


	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}


	/**
	 * @param password セットする password
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	/**
	 * @return nameKanji
	 */
	public String getNameKanji() {
		return nameKanji;
	}


	/**
	 * @param nameKanji セットする nameKanji
	 */
	public void setNameKanji(String nameKanji) {
		this.nameKanji = nameKanji;
	}


	/**
	 * @return nameHira
	 */
	public String getNameHira() {
		return nameHira;
	}


	/**
	 * @param nameHira セットする nameHira
	 */
	public void setNameHira(String nameHira) {
		this.nameHira = nameHira;
	}


	/**
	 * @return zip01
	 */
	public String getZip01() {
		return zip01;
	}


	/**
	 * @param zip01 セットする zip01
	 */
	public void setZip01(String zip01) {
		this.zip01 = zip01;
	}


	/**
	 * @return addr11
	 */
	public String getAddr11() {
		return addr11;
	}


	/**
	 * @param addr11 セットする addr11
	 */
	public void setAddr11(String addr11) {
		this.addr11 = addr11;
	}


	/**
	 * @return address2
	 */
	public String getAddress2() {
		return address2;
	}


	/**
	 * @param address2 セットする address2
	 */
	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	/**
	 * @return phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}


	/**
	 * @param phoneNumber セットする phoneNumber
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	/**
	 * @return phoneEmail
	 */
	public String getPhoneEmail() {
		return phoneEmail;
	}


	/**
	 * @param phoneEmail セットする phoneEmail
	 */
	public void setPhoneEmail(String phoneEmail) {
		this.phoneEmail = phoneEmail;
	}


}
