package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.SelectUsersDAO;
import lessonjava.ludus.dto.PurchaseDTO;
import lessonjava.ludus.dto.UsersDTO;

public class MyPageAction extends ActionSupport implements SessionAware {
	private int userId;
	private int type;
	private List<UsersDTO> userList = new ArrayList<>();
	private List<PurchaseDTO> purchaseList = new ArrayList<>();
	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;
		if (session.get("userList") != null) {
			this.userId =  ((UsersDTO) session.get("userList")).getUserID();
			SelectUsersDAO dao = new SelectUsersDAO(userId);
			purchaseList=dao.select1(userId);
			userList = dao.select();

			if (userList.size() != 0) {
				result = SUCCESS;
			}
		}
		return result;
	}

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
	 * @return type
	 */
	public int getType() {
		return type;
	}

	/**
	 * @param type セットする type
	 */
	public void setType(int type) {
		this.type = type;
	}

	/**
	 * @return userList
	 */
	public List<UsersDTO> getUserList() {
		return userList;
	}

	/**
	 * @param userList セットする userList
	 */
	public void setUserList(List<UsersDTO> userList) {
		this.userList = userList;
	}

	/**
	 * @return purchaseList
	 */
	public List<PurchaseDTO> getPurchaseList() {
		return purchaseList;
	}

	/**
	 * @param purchaseList セットする purchaseList
	 */
	public void setPurchaseList(List<PurchaseDTO> purchaseList) {
		this.purchaseList = purchaseList;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
