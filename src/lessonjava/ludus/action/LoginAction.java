package lessonjava.ludus.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dao.SelectUsersDAO;
import lessonjava.ludus.dto.UsersDTO;

public class LoginAction extends ActionSupport implements SessionAware {
	private String email;
	private String password;
	private Map<String, Object> session;
	private ArrayList<UsersDTO> userList =new ArrayList<>();

	public String execute() {
		String result = ERROR;
		SelectUsersDAO dao = new SelectUsersDAO(email,password);
		userList = dao.select();

		if (userList.size() != 0) {
			if (userList.get(0).getUserFlg() == 1) {
				session.put("userId", userList.get(0).getUserID());
				session.put("name", userList.get(0).getNameKanji());
				result = SUCCESS;
			} else {
				session.put("userId", userList.get(0).getUserID());
				result = LOGIN;
			}
		}
		return result;
	}

	/**
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            セットする email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            セットする password
	 */
	public void setPassword(String password) {
		this.password = password;
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
	 * @return userList
	 */
	public ArrayList<UsersDTO> getUserList() {
		return userList;
	}

	/**
	 * @param userList セットする userList
	 */
	public void setUserList(ArrayList<UsersDTO> userList) {
		this.userList = userList;
	}

}
