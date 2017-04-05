/**
 *
 */
package lessonjava.ludus.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.GoItemDetailDAO;
import lessonjava.ludus.dto.ItemDTO;

/**
 * @author KAZUHIRO UMINO
 *
 */
public class GoItemDetailAction extends ActionSupport {
	/**
	 * 商品ID
	 */
	private int id;
	/**
	 * 商品詳細
	 */
	private String detail;
	/**
	 * 商品イメージ1
	 */
	private int img1;
	/**
	 * 商品イメージ2
	 */
	private int img2;
	/**
	 * 商品イメージ3
	 */
	private int img3;
	/**
	 * 商品名
	 */
	private String name;
	/**
	 * 商品価格
	 */
	private String price;
	/**
	 * 商品ジャンル
	 */
	private String genre;
	/**
	 * 商品キャッチ
	 */
	private String _catch;
	/**
	 * 商品特集
	 */
	private int feature;
	/**
	 * 在庫
	 */
	private String stock;
	/**
	 * 商品リスト
	 */
	public ArrayList<ItemDTO> itemList = new ArrayList<ItemDTO>();

	/**
	 * 商品情報全てを取得するメソッド
	 *
	 * @return SUCCESS
	 */
	public String execute() {
		System.out.println(id);
		String result = ERROR;
		GoItemDetailDAO dao = new GoItemDetailDAO();
		itemList = dao.select(id);
		if (itemList.size() > 0) {
			result = SUCCESS;
		}
		return result;
	}

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @return detail
	 */
	public String getDetail() {
		return detail;
	}

	/**
	 * @return img1
	 */
	public int getImg1() {
		return img1;
	}

	/**
	 * @return img2
	 */
	public int getImg2() {
		return img2;
	}

	/**
	 * @return img3
	 */
	public int getImg3() {
		return img3;
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return price
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * @return genre
	 */
	public String getGenre() {
		return genre;
	}

	/**
	 * @return _catch
	 */
	public String get_catch() {
		return _catch;
	}

	/**
	 * @return feature
	 */
	public int getFeature() {
		return feature;
	}

	/**
	 * @return stock
	 */
	public String getStock() {
		return stock;
	}

	/**
	 * @return itemList
	 */
	public ArrayList<ItemDTO> getItemList() {
		return itemList;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @param detail セットする detail
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}

	/**
	 * @param img1 セットする img1
	 */
	public void setImg1(int img1) {
		this.img1 = img1;
	}

	/**
	 * @param img2 セットする img2
	 */
	public void setImg2(int img2) {
		this.img2 = img2;
	}

	/**
	 * @param img3 セットする img3
	 */
	public void setImg3(int img3) {
		this.img3 = img3;
	}

	/**
	 * @param name セットする name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param price セットする price
	 */
	public void setPrice(String price) {
		this.price = price;
	}

	/**
	 * @param genre セットする genre
	 */
	public void setGenre(String genre) {
		this.genre = genre;
	}

	/**
	 * @param _catch セットする _catch
	 */
	public void set_catch(String _catch) {
		this._catch = _catch;
	}

	/**
	 * @param feature セットする feature
	 */
	public void setFeature(int feature) {
		this.feature = feature;
	}

	/**
	 * @param stock セットする stock
	 */
	public void setStock(String stock) {
		this.stock = stock;
	}

	/**
	 * @param itemList セットする itemList
	 */
	public void setItemList(ArrayList<ItemDTO> itemList) {
		this.itemList = itemList;
	}

}
