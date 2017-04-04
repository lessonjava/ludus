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
public class GoItemDetailAction extends ActionSupport{
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
	 * @return SUCCESS
	 */
	public String execute()
	{
		String result=ERROR;
		GoItemDetailDAO dao = new GoItemDetailDAO();
		itemList = dao.select(id);
		if(itemList.size()>0){
			result=SUCCESS;
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


}
