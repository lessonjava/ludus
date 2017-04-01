package lessonjava.ludus.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginOutAction extends ActionSupport implements SessionAware {
	private int userId;
	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;
		if (session.get("userId") != null) {
			userId = (int) session.get("userId");
			session.clear();
			result = SUCCESS;
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
