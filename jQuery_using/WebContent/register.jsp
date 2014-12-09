<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-1.9.1.min.js"></script>
<style type="text/css">
.high{
color: red;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
<!-- 强调必须填写的部分 -->
	$("form :input.required").each(function(){
		var $required = $("<strong class = 'high'>*</strong>");//创建元素
		$(this).parent().append($required);//将它追加到文档中
	});
<!--表单验证-->
	$("form :input.required").blur(function(){//为表单元素添加失去焦点事件
		var $parent = $(this).parent();
		$parent.find(".formtips").remove();//删除先前的提醒   防止重复叠加
	//验证用户名
		if($(this).is('#username')){
			if(this.value=="" || this.value.length<6){
				var errorMsg = '请输入至少6位的用户名.';
				$parent.append('<span class="formtips onError">'+errorMsg+'</span>');
			}else{
				var okMsg = '输入正确.';
				$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
			}
		}
	//验证密码(涉及安全性等级  还可以更细粒度划分)
		if($(this).is('#password')){
			if(this.value=="" || this.value.length<6){
				var errorMsg = '请输入至少6位的密码.';
				$parent.append('<span class="formtips onError">'+errorMsg+'</span>');
			}else if(!/^.*?[A-Za-z].*$/.test(this.value) || this.value.length<10 ){
				var okMsg = '密码安全性较低.';
				$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
			}else if(this.value.length<15){
				var okMsg = '密码安全性中等.';
				$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
			}else if(this.value.length>14){
				var okMsg = '密码安全性较高.';
				$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
			}
			
		}
	//验证邮箱
		if($(this).is('#email')){
			if(this.value=="" || (this.value!="" && !/.+@.+\.[a-zA-Z]{2,4}$/.test(this.value))){
				var errorMsg = '请输入正确的E-Mail地址.';
				$parent.append('<span class="formtips onError">'+errorMsg+'</span>');
			}else{
				var okMsg = '输入正确.';
				$parent.append('<span class="formtips onSuccess">'+okMsg+'</span>');
			}
		}
	
	});
})

</script>
</head>
<body>
<form action="">
<div>
	<label for="username">用户名:</label>
	<input type="text" id="username" class="required"/>
</div>
<div>
	<label for="password">密码:</label>
	<input type="text" id="password" class="required"/>
</div>
<div>
	<label for="email">邮箱:</label>
	<input type="text" id="email" class="required"/>
</div>
	<input type="submit" value="提交"/>
	
</form>

</body>
</html>