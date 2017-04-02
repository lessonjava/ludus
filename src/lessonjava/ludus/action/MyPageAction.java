package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.SelectUsersDAO;
import lessonjava.ludus.dto.UsersDTO;

public class MyPageAction extends ActionSupport implements SessionAware {
	private int userId;
	private int type;
	private UsersDTO dto =new UsersDTO();
	private ArrayList<UsersDTO> userList = new ArrayList<>();
	private Map<String, Object> session;

	public String execute() {
		System.out.println(type);
		String result = ERROR;
		if (session.get("userList") != null) {
			this.dto =  (UsersDTO) session.get("userList");
			SelectUsersDAO dao = new SelectUsersDAO(dto.getUserID());
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
	 * @param userId
	 *            セットする userId
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	/**
	 * @return userList
	 */
	public ArrayList<UsersDTO> getUserList() {
		return userList;
	}

	/**
	 * @param userList
	 *            セットする userList
	 */
	public void setUserList(ArrayList<UsersDTO> userList) {
		this.userList = userList;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session
	 *            セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
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

}
