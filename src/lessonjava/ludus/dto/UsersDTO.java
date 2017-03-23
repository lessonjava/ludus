/**
 *
 */
package lessonjava.dto;

/**
 * @author siiji
 *
 */
public class UsersDTO {

	/**
	 * ユーザーID
	 */
	private int userID;

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
	private String postal;

	/**
	 * 住所（都道府県・市区町村）
	 */
	private String address1;

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

	/**
	 * ログインログアウトフラグ
	 */
	private boolean loginFlg;

	/**
	 * ユーザー権限
	 */
	private int userFlg;

	/**
	 * 作成日時
	 */
	private String creationTime;

	/**
	 * 更新日時
	 */
	private String modificationTime;

	/**
	 * @return userID
	 */
	public int getUserID() {
		return userID;
	}

	/**
	 * @param userID セットする userID
	 */
	public void setUserID(int userID) {
		this.userID = userID;
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
	 * @return postal
	 */
	public String getPostal() {
		return postal;
	}

	/**
	 * @param postal セットする postal
	 */
	public void setPostal(String postal) {
		this.postal = postal;
	}

	/**
	 * @return address1
	 */
	public String getAddress1() {
		return address1;
	}

	/**
	 * @param address1 セットする address1
	 */
	public void setAddress1(String address1) {
		this.address1 = address1;
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

	/**
	 * @return loginFlg
	 */
	public boolean isLoginFlg() {
		return loginFlg;
	}

	/**
	 * @param loginFlg セットする loginFlg
	 */
	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg = loginFlg;
	}

	/**
	 * @return userFlg
	 */
	public int getUserFlg() {
		return userFlg;
	}

	/**
	 * @param userFlg セットする userFlg
	 */
	public void setUserFlg(int userFlg) {
		this.userFlg = userFlg;
	}

	/**
	 * @return creationTime
	 */
	public String getCreationTime() {
		return creationTime;
	}

	/**
	 * @param creationTime セットする creationTime
	 */
	public void setCreationTime(String creationTime) {
		this.creationTime = creationTime;
	}

	/**
	 * @return modificationTime
	 */
	public String getModificationTime() {
		return modificationTime;
	}

	/**
	 * @param modificationTime セットする modificationTime
	 */
	public void setModificationTime(String modificationTime) {
		this.modificationTime = modificationTime;
	}


}
