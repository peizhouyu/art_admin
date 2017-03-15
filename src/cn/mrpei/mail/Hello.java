package cn.mrpei.mail;

import cn.mrpei.net.util.HttpUtil;

public class Hello {
	public static void main(String[] args) {
		//根据接口获取包含头像的HTML 文档
				String address = "http://q.qlogo.cn/headimg_dl?dst_uin=756487195&spec=100&img_type=jpg";
				HttpUtil httpUtil = new HttpUtil();
				String result = httpUtil.sendHttpRequest(address);
				System.out.println(result);
	}

}
