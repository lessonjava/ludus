package lessonjava.ludus.util;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.CartDeleteDAO;
import lessonjava.ludus.dao.GoItemDetailDAO;
import lessonjava.ludus.dto.CartDTO;
import lessonjava.ludus.dto.ItemDTO;

/**
 * カート全般の処理と決済のときの処理を補助するクラス
 *
 * @author KEIGO NISHIMORI
 * @since 2017/04/10
 * @version 1.0
 */
public class CartAssist extends ActionSupport{

	private float payment;
	private int totalOrder;
	private int totalNumber;

	/**
	 * カートに入ってる商品の合計金額を計算して返すメソッド
	 *
	 * @param cartList
	 * @return payment
	 */
	public float payment(List<CartDTO> cartList) {
		cartList.forEach(cart -> payment += cart.getSubtotal() * cart.getOrderCount());
		return payment;
	}

	/**
	 * カートに入ってる商品数を合計して返すメソッド
	 *
	 * @param cartList
	 * @return totalOrder
	 */
	public int totalOrder(List<CartDTO> cartList) {
		cartList.forEach(cart -> totalOrder += cart.getOrderCount());
		return totalOrder;
	}

	/**
	 * 注文数と商品在庫を比較して在庫より上回らないように計算してセットするメソッド
	 * なお在庫が99個以上あっても最大99個までしか買えないようにしてます。
	 *
	 * @param OrderNumber
	 * @param itemId
	 * @return totalNumber
	 */
	public int totalNumber(int cartNumber,int orderNumber, int itemId) {
		GoItemDetailDAO itemStock = new GoItemDetailDAO();
		List<ItemDTO> itemList = new ArrayList<>();
		itemList = itemStock.select(itemId);
		int stock = Math.min(itemList.get(0).getStock(), 99);
		this.totalNumber = Math.min(cartNumber + orderNumber, stock);
		return this.totalNumber;
	}

	/**
	 * カートと決済するとき、itemテーブルの商品の在庫が0個のとき
	 * カートテーブルから商品を削除して　削除した商品の名前を
	 * ArrayListにいれて返すメソッド。
	 *
	 * @param cartList
	 * @param userId
	 * @param orderNumber
	 * @return msg
	 */
	public List<String> StockCheck(List<CartDTO> cartList,int userId,int orderNumber){
		List<String> msg= new ArrayList<>();
		for(CartDTO cart: cartList){
			this.totalNumber=totalNumber(cart.getOrderCount(),orderNumber,cart.getItemId());
			if(totalNumber<=0){
				CartDeleteDAO cda =  new CartDeleteDAO();
				cda.delete(userId, cart.getItemId());
				msg.add(cart.getItemName());
			}
		}
		return msg;
	}
}
