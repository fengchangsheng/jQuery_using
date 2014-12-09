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
//全反选
	$("#checkedRev").click(function(){
		$('[name=items]:checkbox').each(function(){
			this.checked = !this.checked;
	});
});

//全不选
	$("#checkedNo").click(function(){
		$('[name=items]:checkbox').attr('checked',false);
	});
});


</script>
</head>
<body>
<form action="">
	<input type="checkbox" name="items" value="足球"/>足球
	<input type="checkbox" name="items" value="篮球"/>篮球
	<input type="checkbox" name="items" value="羽毛球"/>羽毛球
	<input type="checkbox" name="items" value="乒乓球"/>乒乓球
	<input type="checkbox" name="items" value="排球"/>排球
	<input type="button" id="checkedRev" value="全反选">
	<input type="button" id="checkedNo" value="全不选">



</form>
</body>
</html>