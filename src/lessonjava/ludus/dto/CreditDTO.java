/**
 *
 */
package lessonjava.ludus.dto;

/**
 * クレジットカード情報を格納するためのDTOクラス
 */
public class CreditDTO {

	/**
	 * ユーザーID
	 */
	private int userId;

	/**
	 * クレジットID
	 */
	private int creditId;

	/**カード番号
	 *
	 */
	private String creditNumber;

	/**カード名義
	 *
	 */
	private String nameE;

	/**セキュリティコード
	 *
	 */
	private String securityCode;

	/**
	 * 有効期限（月）
	 */
	private String expirationMonth;

	/**
	 * 有効期限（年）
	 */
	private String expirationYear;

	/**
	 * 登録日
	 */
	private String registration;

	/**
	 * 更新日
	 */
	private String updatedDate;

	/**
	 * @return userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId セットする userId
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return creditId
	 */
	public int getCreditId() {
		return creditId;
	}

	/**
	 * @param creditId セットする creditId
	 */
	public void setCreditId(int creditId) {
		this.creditId = creditId;
	}

	/**
	 * @return creditNumber
	 */
	public String getCreditNumber() {
		return creditNumber;
	}

	/**
	 * @param creditNumber セットする creditNumber
	 */
	public void setCreditNumber(String creditNumber) {
		this.creditNumber = creditNumber;
	}

	/**
	 * @return nameE
	 */
	public String getNameE() {
		return nameE;
	}

	/**
	 * @param nameE セットする nameE
	 */
	public void setNameE(String nameE) {
		this.nameE = nameE;
	}

	/**
	 * @return securityCode
	 */
	public String getSecurityCode() {
		return securityCode;
	}

	/**
	 * @param securityCode セットする securityCode
	 */
	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	/**
	 * @return expirationMonth
	 */
	public String getExpirationMonth() {
		return expirationMonth;
	}

	/**
	 * @param expirationMonth セットする expirationMonth
	 */
	public void setExpirationMonth(String expirationMonth) {
		this.expirationMonth = expirationMonth;
	}

	/**
	 * @return expirationYear
	 */
	public String getExpirationYear() {
		return expirationYear;
	}

	/**
	 * @param expirationYear セットする expirationYear
	 */
	public void setExpirationYear(String expirationYear) {
		this.expirationYear = expirationYear;
	}

	/**
	 * @return registration
	 */
	public String getRegistration() {
		return registration;
	}

	/**
	 * @param registration セットする registration
	 */
	public void setRegistration(String registration) {
		this.registration = registration;
	}

	/**
	 * @return updatedDate
	 */
	public String getUpdatedDate() {
		return updatedDate;
	}

	/**
	 * @param updatedDate セットする updatedDate
	 */
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

}
