package cn.mrpei.mail;

import cn.mrpei.bean.Users;
import cn.mrpei.net.util.HttpUtil;

/*	
 * 发送邮件的具体执行类
 * 原来只发送文本邮件
 * 2016/10/13
 * 改为发送带QQ头像的HTML table格式的邮件
 * 获取QQ头像 API
 *	http://q.qlogo.cn/headimg_dl?dst_uin= account &spec=640&img_type=jpg
 */
public class SendMail extends Thread {
	private Users users;
	
	public SendMail(Users users){
		this.users = users;
	}
	
	
	
	@Override
	public void run() {
		try {
			MailSenderInfo mailInfo = new MailSenderInfo();
	        mailInfo.setMailServerHost("smtp.163.com");
	        mailInfo.setMailServerPort("25");
	        System.out.println("123");
	        mailInfo.setValidate(true);
	        mailInfo.setUserName("mrpei_admin");//发送者用户名
	        mailInfo.setPassword("pzy19950402");// 邮箱密码
	        mailInfo.setFromAddress("mrpei_admin@163.com");//发送者邮箱，建议使用qq邮箱
	        mailInfo.setToAddress("13653687842@163.com");//接收者邮箱
	        mailInfo.setSubject("鱼已上钩，请您查收----来至Mrpei_admin");
	        mailInfo.setContent(getContent(users));
	        // 这个类主要来发送邮件
	        HtmlMailSender sms = new HtmlMailSender();
	        sms.sendHtmlMail(mailInfo);// 发送文体格式
	        System.out.println("已发送");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	public String getContent(Users users) {
		 String content = "这是位妹子！\n "
	    		+ "姓名：" +users.getName()+"\n"
	    		+"民族："+users.getNation()+"\n"
	    		+"籍贯:"+users.getNativePlace()+"\n"
	    		+"学号："+users.getStudentNumber()+"\n"
	    		+"生日："+users.getBirthday()+"\n"
	    		+"专业班级："+users.getClass_()+"\n"
	    		+"手机号码："+users.getPhone()+"\n"
	    		+"QQ号："+users.getQq()+"\n"
	    		+"宿舍："+users.getSushe()+"\n"
	    		+"意向部门："+users.getDepartment()+"\n"
	    		+"自我介绍："+users.getInfo()+"\n"
	    		+"备注："+users.getRemark()+"\n"
	    		+"报名时间："+users.getTime()+"\n";
		 return content;
	}
	
//	public String getContent(Users users) {
//		
//		//根据接口获取包含头像的HTML 文档
//		String address = "http://q.qlogo.cn/headimg_dl?dst_uin="+ users.getQq() +"&spec=100&img_type=jpg";
//		HttpUtil httpUtil = new HttpUtil();
//		String result = httpUtil.sendHttpRequest(address);
//		
//		
//		StringBuffer demo = new StringBuffer();
//			demo.append("<!DOCTYPE html>");
//			demo.append("<html>");
//			demo.append("<head>");
//			demo.append("<style>");
//			demo.append("table{border-collapse: collapse;border: none;width: 400px;};td{border: solid #000 1px;}");
//			demo.append("</style>");
//			demo.append("</head>");
//			demo.append("<body>");
//			demo.append("<table boder='1'>");
//			demo.append("<caption>这是位妹子</caption>");
//			demo.append("<tr><td>QQ头像</td><td>姓名</td><td>民族</td><td>籍贯</td><td>学号</td><td>生日</td><td>专业班级</td></tr>");
//			
//			demo.append("<tr><td><img src='"+result+"'></td><td>"+users.getName()+"</td><td>"
//					+users.getNation()+ "</td><td>"+users.getNativePlace()+"</td><td>"+users.getStudentNumber()+"</td><td>"
//					+users.getBirthday()+"</td><td>"+users.getClass_()+"</td><td>");
//			
//			demo.append("<tr><td>手机号码</td><td>QQ号</td><td>宿舍</td><td>意向部门</td><td>自我介绍</td><td>备注</td><td>报名时间</td></tr>");
//			demo.append("<tr><td>"+users.getPhone()+"</td><td>"+users.getQq()+"</td><td>"+users.getSushe()+"</td><td>"
//					+users.getDepartment()+"</td><td>"+users.getDepartment()+"</td><td>"+users.getRemark()+"</td><td>"
//					+users.getTime()+"</td><td>");
//			
//			demo.append("</table>");
//			demo.append("</body>");
//			demo.append("</html>");
//		
//		return demo.toString();
//	
//	
//	}
		 
}
