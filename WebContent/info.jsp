<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="Js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<form action=""> 
		用户名:<input type="text" id="showid" name="usename"><span id="show"></span><br>
	</form>
	
	<script type="text/javascript" >
		$(function(){
			$("#showid").blur(function(){
				var usename=$(this).val();
				alert(usename);
				if(usename==""||usename==null){
					$("#show").html("用户名不能为空").css("color","black");
					return;
				}
				$.get(
						"InfoServlet",
						"usename="+usename,
						function(data){
							if("success"==data.msg){
								$("#show").html("可以使用").css("color","blue");
							}else{
								$("#show").html("不可以使用").css("color","red");
							}
						},
						"json"
				)
			});
		})
	</script>
</body>
</html>