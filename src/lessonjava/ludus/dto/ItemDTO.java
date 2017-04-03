package lessonjava.ludus.dto;

/**
 * 商品情報を格納するためのDTOクラス
 * @author TAKAFUMI FUJII
 * @since 2017/03/06
 * @version 1.0
 */
public class ItemDTO {

	/*
	 * 商品ID
	 */
	private int itemId;

	/*
	 * 商品名
	 */
	private String itemName;

	/*
	 * ジャンル
	 */
	private String itemGenre;

	/*
	 * 特集掲載フラグ
	 */
	private int itemFeature;

	/*
	 * 価格
	 */
	private float price;

	/*
	 * 商品説明キャッチ
	 */
	private String itemCatch;

	/*
	 * 商品説明詳細
	 */
	private String itemDetail;

	/*
	 * 商品画像01
	 */
	private String itemImg01;

	/*
	 * 商品画像02
	 */
	private String itemImg02;

	/*
	 * 商品画像03
	 */
	private String itemImg03;

	/*
	 * 在庫
	 */
	private int stock;

	/*
	 * 商品削除フラグ
	 */
	private boolean deleteFlg;

	/*
	 * 登録日
	 */
	private String registrationDate;

	/*
	 * 更新日
	 */
	private String updatedDate;

	/*
	 * 注文個数
	 */
	private int orderCount;

	/**
	 * 商品ID取得メソッド
	 * @return itemId
	 */
	public int getItemId() {
		return itemId;
	}

	/**
	 * 商品ID格納メソッド
	 * @param itemId セットする itemId
	 */
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	/**
	 * 商品名取得メソッド
	 * @return itemName
	 */
	public String getItemName() {
		return itemName;
	}

	/**
	 * 商品名格納メソッド
	 * @param itemName セットする itemName
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	/**
	 * 商品ジャンル取得メソッド
	 * @return itemGenre
	 */
	public String getItemGenre() {
		return itemGenre;
	}

	/**
	 * 商品ジャンル格納メソッド
	 * @param itemGenre セットする itemGenre
	 */
	public void setItemGenre(String itemGenre) {
		this.itemGenre = itemGenre;
	}

	/**
	 * 特集掲載フラグ取得メソッド
	 * @return itemFeature
	 */
	public int getItemFeature() {
		return itemFeature;
	}

	/**
	 * 特集掲載フラグ格納メソッド
	 * @param itemFeature セットする itemFeature
	 */
	public void setItemFeature(int itemFeature) {
		this.itemFeature = itemFeature;
	}

	/**
	 * 価格取得メソッド
	 * @return price
	 */
	public float getPrice() {
		return price;
	}

	/**
	 * 価格格納メソッド
	 * @param price セットする price
	 */
	public void setPrice(float price) {
		this.price = price;
	}

	/**
	 * 商品キャッチ取得メソッド
	 * @return itemCatch
	 */
	public String getItemCatch() {
		return itemCatch;
	}

	/**
	 * 商品キャッチ格納メソッド
	 * @param itemCatch セットする itemCatch
	 */
	public void setItemCatch(String itemCatch) {
		this.itemCatch = itemCatch;
	}

	/**
	 * 商品詳細取得メソッド
	 * @return itemDetail
	 */
	public String getItemDetail() {
		return itemDetail;
	}

	/**
	 * 商品詳細格納メソッド
	 * @param itemDetail セットする itemDetail
	 */
	public void setItemDetail(String itemDetail) {
		this.itemDetail = itemDetail;
	}

	/**
	 * 商品画像１取得メソッド
	 * @return itemImg01
	 */
	public String getItemImg01() {
		return itemImg01;
	}

	/**
	 * 商品画像１格納メソッド
	 * @param itemImg01 セットする itemImg01
	 */
	public void setItemImg01(String itemImg01) {
		this.itemImg01 = itemImg01;
	}

	/**
	 * 商品画像２取得メソッド
	 * @return itemImg02
	 */
	public String getItemImg02() {
		return itemImg02;
	}

	/**
	 * 商品画像２格納メソッド
	 * @param itemImg02 セットする itemImg02
	 */
	public void setItemImg02(String itemImg02) {
		this.itemImg02 = itemImg02;
	}

	/**
	 * 商品画像３取得メソッド
	 * @return itemImg03
	 */
	public String getItemImg03() {
		return itemImg03;
	}

	/**
	 * 商品画像３格納メソッド
	 * @param itemImg03 セットする itemImg03
	 */
	public void setItemImg03(String itemImg03) {
		this.itemImg03 = itemImg03;
	}

	/**
	 * 在庫取得メソッド
	 * @return stock
	 */
	public int getStock() {
		return stock;
	}

	/**
	 * 在庫格納メソッド
	 * @param stock セットする stock
	 */
	public void setStock(int stock) {
		this.stock = stock;
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
	 * @return registrationDate
	 */
	public String getRegistrationDate() {
		return registrationDate;
	}

	/**
	 * 登録日格納メソッド
	 * @param registrationDate セットする registrationDate
	 */
	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
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
	 * @param updatedDate セットする updatedDate
	 */
	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
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
	 * @param orderCount
	 */
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}



}
