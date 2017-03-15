<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width" />  
	<title>太原理工大学艺术团在线报名系统</title>
	<link rel="stylesheet" href="jQuery/jquery.mobile-1.3.2.min.css">
	<script src="jQuery/jquery-1.8.3.min.js"></script>
	<script src="jQuery/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
	<div data-role="page" data-theme="b">

  	<div data-role="header">
    	<h1>太原理工大学艺术团在线报名系统</h1>
  	</div>

  	<div data-role="content">
  		<div>
  			<p>太原理工大学校艺术团是校党委领导、校团委指导下的我校唯一一个全校性学生艺术团体。设有舞蹈队、主持队、曲艺队、器乐队、声乐队、组织部、外联部、公关部、行政事务部、宣传部，是校内外颇具影响力的组织之一。</p>
  		</div>
    	<form id="subform" method="post" action="register">

		  	<label for="fname">姓名:</label>
		  	<input type="text" name="name" id="fname">

		  	<label for="day">性别：</label>
		    <select name="sex" id="day">
		      	<option value="男">男</option>
		      	<option value="女">女</option>
		    </select>

		    <label for="fname">民族:</label>
		  	<input type="text" name="nation" id="fname">
		  	<label for="fname">籍贯:</label>
		  	<input type="text" name="native_place" id="fname">
		  	<label for="fname">学号:</label>
		  	<input type="number" name="student_number" id="fname">
  			<label for="fname">出生日期:</label>
		  	<input type="date" name="birthday" id="fname">

		  	<label for="day">政治面貌：</label>
		    <select name="politics_status" id="day">
		      	<option value="中共党员">中共党员</option>
		      	<option value="共青团员">共青团员</option>
		      	<option value="群众">群众</option>
		    </select>
		    <label for="fname">专业班级:</label>
		  	<input type="text" name="clazz" id="fname">
		  	<label for="fname">联系电话:</label>
		  	<input type="number" name="phone" id="fname">
		  	<label for="fname">QQ号:</label>
		  	<input type="number" name="qq" id="fname">
		  	<label for="fname">邮箱:</label>
		  	<input type="email" name="email" id="fname">
			<label for="fname">宿舍:</label>
		  	<input type="text" name="sushe" id="fname">
			

			<!--级联菜单 -->
			
		        <label for="fname">意向部门：</label>
		        <select name="department" id="day">
					<optgroup label="表演部门">
				        <option value="舞蹈队">舞蹈队</option>
				        <option value="声乐队">声乐队</option>
				        <option value="器乐队">器乐队</option>
				        <option value="曲艺队">曲艺队</option>
				        <option value="主持队">主持队</option>
					</optgroup>
					<optgroup label="职能部门">
				        <option value="公关部">公关部</option>
				        <option value="外联部">外联部</option>
				        <option value="宣传部">宣传部</option>
				        <option value="行政部">行政部</option>
				        <option value="组织部">组织部</option>
					</optgroup>
		        </select>
		   

			<fieldset data-role="controlgroup" data-type="horizontal">  
            <legend>是否服从调剂:</legend>  
	            <input type="radio" name="adjust" id="map1" value="是" checked="checked" />  
	            <label for="map1">是</label>  
	  
	            <input type="radio" name="adjust" id="map2" value="否" />  
	            <label for="map2">否</label>  
  			</fieldset>  

  			<label for="textarea">个人简介：</label>  
    		<textarea cols="40" rows="8" name="info" id="textarea"></textarea> 

    		<label for="textarea">备注：</label>  
    		<textarea cols="40" rows="8" name="remark" id="textarea"></textarea> 
			
			<!-- <button type="submit" id="ok">提交</button> -->
			<a href="#myPopupDialog" data-rel="popup" class="ui-btn"  onclick="final()"  style="text-decoration:none;"><button>提交</button></a>

		</form>

  	</div>

  	<div data-role="footer">
    	<h1>开发者MrPei  QQ:756487195</h1>
  	</div>

  	<div data-role="popup" id="myPopupDialog">
		 <div data-role="header">
		 	<h1>系统提示</h1>
		 </div>
		 <div data-role="main" class="ui-content">
		 	<p>报名成功！请等待面试通知</p>
		 <div data-role="footer"><h1>如果报名系统出现问题请与开发者联系</h1></div>
	</div>

</div>
</body>
<!-- 定时器-->
<script type="text/javascript">
	function final(){
		setTimeout("submit()",2000);
	}
	function submit(){
		document.getElementById('subform').submit();
	}
</script>

</html>