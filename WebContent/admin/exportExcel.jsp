<%@ page contentType="application/msexcel" %>  
<%@page import="cn.mrpei.bean.Users"%>
<%@page import="java.util.List"%>


<%  
   //response.setHeader("Content-disposition","inline; filename=videos.xls");  
   response.setHeader("Content-disposition","attachment; filename=yishutuan.xls");  
   //以上这行设定传送到前端浏览器时的档名为test.xls  
   //就是靠这一行，让前端浏览器以为接收到一个excel档   
%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%List<Users> usersList = (List<Users>)request.getAttribute("usersList");
	System.out.print(usersList);
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>spring jdbc test</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    

    <title>太原理工大学艺术团在线报名系统</title>
   
   

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
    	<h1 align="center">太原理工大学艺术团在线报名情况</h1>
    </div>
        <div class="row">
            <div class="col-sm-12">
               
                    <div class="ibox-content">

                        <table border="1" class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                 <tr>
                                    <th>序号</th>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>民族</th>
                                    <th>籍贯</th>
                                    <th>学号</th>
                                    <th>出生日期</th>
                                    <th>政治面貌</th>
                                    <th>专业班级</th>
                                    <th>联系电话</th>
                                    <th>QQ</th>
                                    <th>邮箱</th>
                                    <th>宿舍</th>
                                    <th>意向部门</th>
                                    <th>调剂</th>
                                    <th>个人简介</th>
                                    <th>备注</th>
                                    <th>提交时间</th>
                                </tr>
                            </thead>
                            <tbody>
                               
                                  <s:iterator value="#request.usersList" status="stat" id="sd">
                                     <tr class="gradeX">
                                    	<td align="center"><s:property value="id"/></td>
                                    	<td align="center"><s:property value="name"/></td>
                                    	<td align="center"><s:property value="sex"/></td>
                                    	<td align="center"><s:property value="nation"/></td>
                                    	<td align="center"><s:property value="nativePlace"/></td>
                                    	<td align="center"><s:property value="studentNumber"/></td>
                                    	<td align="center"><s:property value="birthday"/></td>
                                    	<td align="center"><s:property value="politicsStatus"/></td>
                                    	<td align="center"><s:property value="class_"/></td>
                                    	<td align="center"><s:property value="phone"/></td>
                                    	<td align="center"><s:property value="qq"/></td>
                                    	<td align="center"><s:property value="email"/></td>
                                    	<td align="center"><s:property value="sushe"/></td>
                                    	<td align="center"><s:property value="department"/></td>
                                    	<td align="center"><s:property value="adjust"/></td>
                                    	<td align="center"><s:property value="info"/></td>
                                    	<td align="center"><s:property value="remark"/></td>
                                    	<td align="center"><s:property value="time"/></td>
                                     </tr>
                                 
                                  </s:iterator>
                                
                            </tbody>
                        
                        </table>

                    </div>
                </div>
            </div>
       </div>
        
  

   



   

   

</body>

</html>