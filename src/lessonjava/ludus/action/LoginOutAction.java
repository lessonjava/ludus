package lessonjava.ludus.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import lessonjava.ludus.dto.UsersDTO;

public class LoginOutAction extends ActionSupport implements SessionAware {
	private UsersDTO dto = new UsersDTO();
	private Map<String, Object> session;

	public String execute() {
		String result = ERROR;
		if (session.get("userList") != null) {
			dto = (UsersDTO) session.get("userList");
			session.remove("userList");
			result = SUCCESS;
		}

		return result;

	}

	/**
	 * @return userId
	 */

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @return dto
	 */
	public UsersDTO getDto() {
		return dto;
	}

	/**
	 * @param dto
	 *            セットする dto
	 */
	public void setDto(UsersDTO dto) {
		this.dto = dto;
	}

	/**
	 * @param session
	 *            セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
