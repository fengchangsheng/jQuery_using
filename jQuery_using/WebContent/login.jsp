<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resource/js/jquery-1.9.1.min.js"></script>
    <style type="text/css">
	.focus{
		border:1px solid #f00;
		background:#fcc;
	}    
    </style>
    <script type="text/javascript">
    $(document).ready(function(){
    	alert(1);
    	$(":input").focus(function(){
    		$(this).addClass("focus");	
    	}).blur(function(){
    		$(this).removeClass("focus");
    	});
    	
    });
    </script>
  </head>
  <body>
       <form action="" method="post">
           Account：<input name="username"/><br/>
           Password：<input name="password" type="password"/><br/>
           <input value="submit" type="submit"/>
       </form>
  </body>
</html>
