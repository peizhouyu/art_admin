package cn.mrpei.action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String account;
	private String password;
	
	public String login() {
		if (account.equals("admin")&&password.equals("admin123")) {
			return SUCCESS;
		}else{
			return "error";
		}
		
	}
	
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
