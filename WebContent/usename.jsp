<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="Js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="">
		用户名：<input type="text" name="usename" /><span id="show"></span><br>
		<input type="submit" name="提交"/>
	</form>
	
	<script type="text/javascript">
		$(function(){
			$("[name='usename']").blur(function(){
				var uname = $(this).val();
				//alert(uname);
				$.ajax({
					"url":"ChecknameServlet",
					"type":"get",
					"data":"usename="+uname,
					"success":function(data){
						if("success"==data){
							$("#show").html("可以使用").css("color","blue");
						}else{
							$("#show").html("已被占用").css("color","red");
						}
					},
					"datatype":"text"
				});
			});
		})
	</script>
</body>
</html>