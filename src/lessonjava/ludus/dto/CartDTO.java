package lessonjava.ludus.dto;

/**
* カート情報を格納するためのDTOクラス
* @author KEIGO NISHIMORI
* @since 2017/04/05
* @version 1.0
*/
public class CartDTO {
	/**
	 * ユーザーID
	 */
	private int userId;

	/**
	 * 商品ID
	 */
	private int itemId;

	/**
	 * 商品名
	 */
	private String itemName;

	/**
	 * 注文数
	 */
	private int orderCount;

	/**
	 * 小計
	 */
	private float subtotal;

	/**
	 * 商品画像01
	 */
	private String itemImg01;

	/**
	 * 商品削除
	 */
	private boolean deleteFlg;

	/**
	 * 登録日
	 */
	private String registration;

	/**
	 * 更新日
	 */
	private String updatedDate;

	/**
	 * ユーザーID取得メソッド
	 * @return userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * ユーザーID格納メソッド
	 * @param userId セットする userId
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * アイテムID取得メソッド
	 * @return itemId
	 */
	public int getItemId() {
		return itemId;
	}

	/**
	 * アイテムID格納メソッド
	 * @param itemId セットする itemId
	 */
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	/**
	 * 注文数取得メソッド
	 * @return orderCount
	 */
	public int getOrderCount() {
		return orderCount;
	}

	/**
	 * 注文数格納メソッド
	 * @param orderCount セットする orderCount
	 */
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	/**
	 * デリートフラグ取得メソッド
	 * @return deleteFlg
	 */
	public boolean isDeleteFlg() {
		return deleteFlg;
	}

	/**
	 * デリートフラグ格納メソッド
	 * @param deleteFlg セットする deleteFlg
	 */
	public void setDeleteFlg(boolean deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	/**
	 * 登録日取得メソッド
	 * @return registration
	 */
	public String getRegistration() {
		return registration;
	}

	/**
	 * 登録日格納メソッド
	 * @param registration セットする registration
	 */
	public void setRegistration(String registration) {
		this.registration = registration;
	}

	/**
	 * 更新日取得メソッド
	 * @return updatedDate
	 */
	public String getUpdatedDate() {
		return updatedDate;
	}

	/**
	 * 更新日格納メソッド
	 * @param updatedUate セットする updatedDate
	 */
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

	/**
	 * @return subtotal
	 */
	public float getSubtotal() {
		return subtotal;
	}

	/**
	 * @param subtotal セットする subtotal
	 */
	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}

	/**
	 * @return itemName
	 */
	public String getItemName() {
		return itemName;
	}

	/**
	 * @param itemName セットする itemName
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	/**
	 * @return itemImg01
	 */
	public String getItemImg01() {
		return itemImg01;
	}

	/**
	 * @param itemImg01 セットする itemImg01
	 */
	public void setItemImg01(String itemImg01) {
		this.itemImg01 = itemImg01;
	}


}
