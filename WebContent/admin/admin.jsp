<%@page import="cn.mrpei.bean.Users"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    

    <title>太原理工大学艺术团在线报名系统</title>
   
    <link rel="shortcut icon" href="favicon.ico"> <link href="admin/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="admin/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="admin/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="admin/css/animate.css" rel="stylesheet">
    <link href="admin/css/style.css?v=4.0.0" rel="stylesheet"><base target="_blank">
	
	<script type="text/javascript">
		function excelPrint(){
			window.open("exportExcle");         
		}
	</script>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
    	<h1 align="center">太原理工大学艺术团在线报名情况</h1>
    </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>基本 <small>分类，查找</small></h5>
                        
                        <button onclick="excelPrint()"  type="button" class="btn btn-success" style=" float:right;">所有数据生成Excel</button>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-striped table-bordered table-hover dataTables-example">
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
                                    	<td><s:property value="id"/></td>
                                    	<td><s:property value="name"/></td>
                                    	<td><s:property value="sex"/></td>
                                    	<td><s:property value="nation"/></td>
                                    	<td><s:property value="nativePlace"/></td>
                                    	<td><s:property value="studentNumber"/></td>
                                    	<td><s:property value="birthday"/></td>
                                    	<td><s:property value="politicsStatus"/></td>
                                    	<td><s:property value="class_"/></td>
                                    	<td><s:property value="phone"/></td>
                                    	<td><s:property value="qq"/></td>
                                    	<td><s:property value="email"/></td>
                                    	<td><s:property value="sushe"/></td>
                                    	<td><s:property value="department"/></td>
                                    	<td><s:property value="adjust"/></td>
                                    	<td><s:property value="info"/></td>
                                    	<td><s:property value="remark"/></td>
                                    	<td><s:property value="time"/></td>
                                     </tr>
                                 
                                  </s:iterator>
                                
                            </tbody>
                            <tfoot>
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
                            </tfoot>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        
    </div>

    <!-- 全局js -->
    <script src="admin/js/jquery.min.js?v=2.1.4"></script>
    <script src="admin/js/bootstrap.min.js?v=3.3.5"></script>



    <script src="admin/js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="admin/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="admin/js/plugins/dataTables/dataTables.bootstrap.js"></script>




    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function () {
            $('.dataTables-example').dataTable();

            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable('../example_ajax.php', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        });

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData([
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row"]);

        }
    </script>

   

</body>

</html>