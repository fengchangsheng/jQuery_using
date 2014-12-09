<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//1.将选中的添加
	$('#add').click(function(){
		var $options = $('#select1 option:selected');//获取选中的选项
		var $remove = $options.remove();//删除下拉列表中选中的选项
		$remove.appendTo('#select2');//追加给对方
		
		//简化写法：
		//var $options = $('#select1 option:selected');
		//$options.appendTo('#select2');
	});
	
	//2.将全部添加
	$('#add_all').click(function(){
		var $options = $('#select1 option');//获取所有选项
		$options.appendTo('#select2');
	});
	
	//3.双击某个选项将其添加
	$('#select1').dblclick(function(){
		var $options = $("option:selected",this);
		$options.appendTo('#select2');
	});
});


</script>
</head>
<body>
<div class="centent">
	<select multiple id="select1" style="width:100px;height:160px">
		<option value="1">选项1</option>	
		<option value="2">选项2</option>	
		<option value="3">选项3</option>	
		<option value="4">选项4</option>	
		<option value="5">选项5</option>	
		<option value="6">选项6</option>	
		<option value="7">选项7</option>	
		<option value="8">选项8</option>	
	</select>
	<div>
		<span id="add">选中添加到右边&gt;&gt;</span>
		<span id="add_all">全部添加到右边&gt;&gt;</span>
	</div>
</div>

<div class="centent">
	<select multiple id="select2" style="width:100px;height:160px">
	</select>
	<div>
		<span id="remove">&lt;&lt;选中添加到左边</span>
		<span id="remove_all">&lt;&lt;全部添加到左边</span>
	</div>
</div>
</body>
</html>