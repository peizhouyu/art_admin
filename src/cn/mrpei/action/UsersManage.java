package cn.mrpei.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.mrpei.dao.UsersDAO;

public class UsersManage extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpSession session = request.getSession();
	
	public String getUsers() {
		UsersDAO<Object> noteDao = new UsersDAO<>();
		request.setAttribute("usersList" ,  noteDao.list("from Users"));
		return SUCCESS;
	}
}
