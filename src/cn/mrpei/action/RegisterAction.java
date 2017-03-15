package cn.mrpei.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.mrpei.bean.Users;
import cn.mrpei.dao.UsersDAO;
import cn.mrpei.mail.Hello;
import cn.mrpei.mail.SendMail;

public class RegisterAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String sex;
	private String nation;
	private String native_place;
	private Integer student_number;
	private String birthday;
	private String politics_status;
	private String clazz;
	private String phone;
	private String qq;
	private String email;
	private String sushe;
	private String department;
	private String adjust;
	private String info;
	private String remark;
	private String devices;
	private String operating_system;
	private String browser;
	private String ip;
	
	public String register() {
		Users users = new Users();
		UsersDAO usersDAO = new UsersDAO();
		
		Date date=new Date();
		DateFormat barformat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=barformat.format(date);
		
		users.setAdjust(adjust);
		users.setBirthday(birthday);
		users.setBrowser(browser);
		users.setClass_(clazz);
		users.setDepartment(department);
		users.setDevices(devices);
		users.setSushe(sushe);
		users.setEmail(email);
		users.setInfo(info);
		users.setIp(ip);
		users.setName(name);
		users.setNation(nation);
		users.setNativePlace(native_place);
		users.setOperatingSystem(operating_system);
		users.setPhone(phone);
		users.setPoliticsStatus(politics_status);
		users.setQq(qq);
		users.setRemark(remark);
		users.setSex(sex);
		users.setTime(time);
		users.setStudentNumber(student_number);
		System.out.println(name);
		
		if (usersDAO.addUser(users) != null) {
			//判断性别 是女生的话 发送邮件
			if (sex.equals("女")) {
				SendMail sendMail = new SendMail(users);
				sendMail.start();
			}
			
			return SUCCESS;
		}else {
			return "error";
		}
		
	}
	
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getNative_place() {
		return native_place;
	}
	public void setNative_place(String native_place) {
		this.native_place = native_place;
	}
	public Integer getStudent_number() {
		return student_number;
	}
	public void setStudent_number(Integer student_number) {
		this.student_number = student_number;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPolitics_status() {
		return politics_status;
	}
	public void setPolitics_status(String politics_status) {
		this.politics_status = politics_status;
	}
	public String getClazz() {
		return clazz;
	}
	public void setClazz(String clazz) {
		this.clazz = clazz;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSushe() {
		return sushe;
	}


	public void setSushe(String sushe) {
		this.sushe = sushe;
	}


	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getAdjust() {
		return adjust;
	}
	public void setAdjust(String adjust) {
		this.adjust = adjust;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getDevices() {
		return devices;
	}
	public void setDevices(String devices) {
		this.devices = devices;
	}
	public String getOperating_system() {
		return operating_system;
	}
	public void setOperating_system(String operating_system) {
		this.operating_system = operating_system;
	}
	public String getBrowser() {
		return browser;
	}
	public void setBrowser(String browser) {
		this.browser = browser;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	
}
