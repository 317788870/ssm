<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/icon.css">   
<script type="text/javascript" src="../static/easyui/jquery.min.js"></script>   
<script type="text/javascript" src="../static/easyui/jquery.easyui.min.js"></script>  
<script type="text/javascript" src="../static/easyui/locale/easyui-lang-zh_CN.js"></script>  
</head>
<body>
<table id="dg"></table>  
<script type="text/javascript">
$(function() {
	$('#dg').datagrid({    
	    //title: '纳税专员',
	    url:'../user/getAllUsers',//请求的url
	    method: "post",
	    fitColumns:true,//
	    striped: true,//斑马线
        emptyMsg: '未找到记录！',
	    loadMsg:"玩命加载中...",
	    pagination:true,//显示分页
        collapsible: true,//可折叠
        rownumbers:true,//显示行号
	    columns:[[    
	        {field:'id',title:'id编号',align:'center'},    
	        {field:'userName',title:'账号',align:'center'},    
	        {field:'password',title:'密码',align:'center'},    
	        {field:'age',title:'年龄',align:'center'},    
	        {field:'cz',title:'操作',align:'center',formatter:function(value,row,index){
	        	return "<a href='showUser?id="+row.id+"'>详情</a>&nbsp;"+
	        	"<a href='toUpdateUser?id="+row.id+"'>修改</a>&nbsp;"+
	        	"<a href='javascript:deleteUserById("+row.id+")'>删除</a>&nbsp;";
	        }}
	    ]]    
	});
})
function deleteUserById(id) {
	$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
	    if (r){    
			$.post(
				"deleteUserById",
				{"id":id},
				function(data){
					if(data.success){
						$('#dg').datagrid('reload');
					}
				},
				"json"
			)
	        
	    }    
	});
}
</script>
</body>
</html>