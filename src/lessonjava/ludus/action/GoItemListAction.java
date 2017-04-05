/**
 *
 */
package lessonjava.ludus.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.GoItemListDAO;
import lessonjava.ludus.dto.GenreDTO;
import lessonjava.ludus.dto.ItemDTO;

/**
 *ジャンプ別に商品一覧を表示するアクション
 * @author KAZUHIRO UMINO
 *
 */
public  class GoItemListAction extends ActionSupport {

	/**
	 * 商品ID
	 */
	private int itemId;

	/**
	 * 商品名
	 */
	private String itemName;

	/**
	 * 商品ジャンル
	 */
	private String itemGenre;

	/**
	 * 商品価格
	 */
	private float price;

	/**
	 * 商品画像1
	 */
	private String itemImg01;

	/**
	 * 商品一覧表示用リスト
	 */
	private ArrayList<ItemDTO> displayList = new ArrayList<ItemDTO>();

	/**
	 * 商品ジャンル一覧表示用リスト
	 */
	private ArrayList<GenreDTO> genreList = new ArrayList<GenreDTO>();


	/**
	 * 実行メソッド
	 * @return result
	 */
	public String execute() {
		String result = ERROR;

		GoItemListDAO dao = new GoItemListDAO();

				displayList = dao.select(itemGenre);

		if(displayList.size() != 0) {
			result = SUCCESS;
		}

		return result;
	}


	/**
	 * @return itemId
	 */
	public int getItemId() {
		return itemId;
	}


	/**
	 * @param itemId セットする itemId
	 */
	public void setItemId(int itemId) {
		this.itemId = itemId;
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
	 * @return itemGenre
	 */
	public String getItemGenre() {
		return itemGenre;
	}


	/**
	 * @param itemGenre セットする itemGenre
	 */
	public void setItemGenre(String itemGenre) {
		this.itemGenre = itemGenre;
	}


	/**
	 * @return price
	 */
	public float getPrice() {
		return price;
	}


	/**
	 * @param price セットする price
	 */
	public void setPrice(float price) {
		this.price = price;
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


	/**
	 * @return displayList
	 */
	public ArrayList<ItemDTO> getDisplayList() {
		return displayList;
	}


	/**
	 * @param displayList セットする displayList
	 */
	public void setDisplayList(ArrayList<ItemDTO> displayList) {
		this.displayList = displayList;
	}


	/**
	 * @return genreList
	 */
	public ArrayList<GenreDTO> getGenreList() {
		return genreList;
	}


	/**
	 * @param genreList セットする genreList
	 */
	public void setGenreList(ArrayList<GenreDTO> genreList) {
		this.genreList = genreList;
	}

}

