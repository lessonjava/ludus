package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import lessonjava.ludus.dao.CartSelectDAO;
import lessonjava.ludus.dao.CartUpdateDAO;
import lessonjava.ludus.dto.CartDTO;
import lessonjava.ludus.util.CartAssist;



/**
 * カートに商品を登録するクラス
 * ログインしてなかったとき、HashMapの「cartOrder」(商品のitemIDと注文数)を「cartOrderSession」というキー名でsessionにいれて保存している。
 * ログインしていたとき、mysqlのcartテーブルに商品情報をinsert&updateして保存している。sessionは使っていない。
 * また、sessionに「cartOrderSession」があって(つまりログインしてなかった)、ログインしたときに「cartOrderSession」の
 * 情報を取り出してcartテーブルに商品情報をinsertかupdateして保存したあと「cartOrderSession」をsessionからremoveする。(ログインしたときかならず一回だけ実行する)
 *
 * @author KEIGO NISHIMORI
 * @since 2017/04/05
 * @version 1.0
 */
public class CartInsertAction extends CartAssist implements SessionAware {

	/**
	 * カート内に入ってる商品の合計金額
	 */
	private float payment;

	/**
	 * カート内に入ってる合計商品数
	 */
	private int order;

	/**
	 * 商品詳細からカートに画面遷移したとき
	 */
	private boolean isDetail;

	/**
	 * ユーザーID
	 */
	private int userId;

	/**
	 * 商品ID
	 */
	private int itemId;

	/**
	 * 商品の注文数
	 */
	private int orderNumber;

	/**
	 * 検索したカート内の商品の情報を入れるリスト
	 */
	private List<CartDTO> cartList = new ArrayList<>();

	/**
	 * セッション
	 */
	private Map<String, Object> session;

	/**
	 * 注文数と商品の在庫数を計算した値をいれる
	 */
	private int totalNumber;

	List<String> msg= new ArrayList<>();

	/**
	 * [概 要] 戻り値の型に合わせてキャスト
	 *
	 * @return castObj
	 */
	@SuppressWarnings("unchecked")
	public static <T> T autoCast(Object obj) {
		T castObj = (T) obj;
		return castObj;
	}

	public String execute() {
		// 商品のitemIDと注文数を入れるためのHashMap
		Map<Integer, Integer> cartOrder = new HashMap<>();
		// カート内にある商品をjspに表示するため または ログインしていた場合、カートテーブルに商品があるか調べる
		CartSelectDAO certDao = new CartSelectDAO();
		// ログインしていた場合mysqlにデータをinsert&update実行するためにCartUpdateDAOをインスタンス化
		CartUpdateDAO isInsert = new CartUpdateDAO();
		if (session.containsKey("cartOrderSession")) {// sessionにcartOrderSession(商品のitemIDと注文数が入ってる)が入っていたら
			cartOrder = autoCast(session.get("cartOrderSession"));
		}

		//▼▼ログインしてないときの処理 ここから▼▼
		if (!(session.containsKey("userId"))) {// ログインしてなかったらプログラム開始
			if (cartOrder.containsKey(itemId) && isDetail) {// 商品詳細からカートの遷移のとき
				this.totalNumber=totalNumber(cartOrder.get(itemId),orderNumber, itemId);
			} else if (orderNumber != 0) {
				this.totalNumber=totalNumber(0,orderNumber, itemId);
			}
			if (orderNumber != 0) {
				cartOrder.put(itemId, totalNumber);
				session.put("cartOrderSession", cartOrder);
				cartOrder = autoCast(session.get("cartOrderSession"));
			}
			if (session.containsKey("cartOrderSession")) {
				cartList = certDao.displayCart(cartOrder);
				this.order=totalOrder(cartList);
				this.payment=payment(cartList);
			}
			return SUCCESS;
		}
		//▲▲ログインしてないときの処理 ここまで▲▲

		userId = (int) session.get("userId");

		//▼▼ログインしたときセッション同期する処理(一回だけ) ここから▼▼
		if (!(session.containsKey("cartSync")) && session.containsKey("cartOrderSession")) {// 同期してないとき&&sessionに"cartOrderSession"がないとき
			for (Integer key : cartOrder.keySet()) {// cartOrderに入ってるキー数だけ繰り返す
				cartList = certDao.selectCart(userId, key, false);
				if (cartList.isEmpty()) {// カートテーブルになにもなかったら、データベースにinsert
					this.totalNumber=totalNumber(((int) cartOrder.get(key) ),0, key);
					isInsert.exeUpdate(userId, key, totalNumber, true);
				} else {// カートテーブル似合った場合、データベースにupdate
					this.totalNumber=totalNumber(((int) cartOrder.get(key)) + (cartList.get(0).getOrderCount()),0, key);
					isInsert.exeUpdate(userId, key, totalNumber, false);
				}
			}
			session.remove("cartOrderSession");//
			session.put("cartSync", "同期しました");
		}
		//▲▲ログインしたときセッション同期する処理(一回だけ) ここまで▲▲

		//▼▼ログインしてるときの処理 ここから▼▼
		if (orderNumber != 0) {// ログイン状態で同期関係なしに動きます。
			cartList = certDao.selectCart(userId, itemId, false);
			if (!(cartList.isEmpty()) && isDetail) { // 商品詳細からカートに行ったとき(update)
				this.totalNumber=totalNumber(cartList.get(0).getOrderCount(),orderNumber, itemId);
				isInsert.exeUpdate(userId, itemId, totalNumber, false);
			} else if (cartList.isEmpty()) { // カートテーブルになにも入ってないとき(insert)
				this.totalNumber=totalNumber(0, orderNumber,itemId);
				isInsert.exeUpdate(userId, itemId, totalNumber, true);
			} else { // カートテーブルに商品が入ってるとき(update)
				this.totalNumber=totalNumber(0,orderNumber, itemId);
				isInsert.exeUpdate(userId, itemId, totalNumber, false);
			}
		}
		cartList = certDao.selectCart(userId, itemId, true);
		this.msg=StockCheck(cartList, userId, orderNumber);
		cartList = certDao.selectCart(userId, itemId, true);
		this.order=totalOrder(cartList);
		this.payment=payment(cartList);
		return SUCCESS;
		//▲▲ログインしてるときの処理 ここまで▲▲
	}





	public float getPayment() {
		return payment;
	}

	public void setPayment(float payment) {
		this.payment = payment;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public boolean isDetail() {
		return isDetail;
	}

	public void setDetail(boolean isDetail) {
		this.isDetail = isDetail;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}

	public List<CartDTO> getCartList() {
		return cartList;
	}

	public void setCartList(List<CartDTO> cartList) {
		this.cartList = cartList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public List<String> getMsg() {
		return msg;
	}

	public void setMsg(List<String> msg) {
		this.msg = msg;
	}

}
