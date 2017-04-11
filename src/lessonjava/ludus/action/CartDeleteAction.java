package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import lessonjava.ludus.dao.CartDeleteDAO;
import lessonjava.ludus.dao.CartSelectDAO;
import lessonjava.ludus.dto.CartDTO;
import lessonjava.ludus.util.CartAssist;



public class CartDeleteAction extends CartAssist implements SessionAware{

	/**
	 * 　カート内の商品数の合計金額
	 */
	private float payment;

	/**
	 * 　カート内の商品数
	 */
	private int order;

	/**
	 * 　ユーザーID
	 */
	private int userId;

	/**
	 * 　商品ID
	 */
	private int itemId;

	/**
	 * 　セッション
	 */
	private Map<String, Object> session;

	/**
	 * 　検索したカート内の商品の情報を入れるリスト
	 */
	private List<CartDTO> cartList = new ArrayList<>();

	/**
	 * [概 要] 戻り値の型に合わせてキャスト
　  * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> T autoCast(Object obj) {
		T castObj = (T) obj;
		return castObj;
	}

	public String execute() {
		String result = SUCCESS;
		Map<Integer, Integer> cartOrder = new HashMap<>();
		CartSelectDAO certDao = new CartSelectDAO();
		CartDeleteDAO cda =  new CartDeleteDAO();
		if (session.containsKey("userId")) {
			userId = (int) session.get("userId");
			cda.delete(userId, itemId);
			cartList = certDao.selectCart(userId, itemId, true);
			this.order=totalOrder(cartList);
			this.payment=payment(cartList);
			return result;
		}else if(session.containsKey("cartOrderSession")){
			cartOrder = autoCast(session.get("cartOrderSession"));
			cartOrder.remove(itemId);
			session.put("cartOrderSession", cartOrder);
			cartList = certDao.displayCart(cartOrder);
			this.order=totalOrder(cartList);
			this.payment=payment(cartList);
		}

		return result;
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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<CartDTO> getCartList() {
		return cartList;
	}

	public void setCartList(List<CartDTO> cartList) {
		this.cartList = cartList;
	}

}
