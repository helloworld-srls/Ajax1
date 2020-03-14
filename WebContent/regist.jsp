<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#show:{
		color:red
	}
</style>
</head>
<body>
	<form action="RegistServlet" enctype="application/x-www-form-urlencoded">
		用户名：<input type="text" name="usename"><span id="show"></span><br>
				<input type="submit" name="提交"><br>
	</form>
	
	<script type="text/javascript" >
		var getname = document.getElementsByName("usename")[0];
		getname.onblur=function(){
		var name = getname.value;
		var http = new XMLHttpRequest();
		http.onreadystatechange=function(){
			if(http.onreadystatechange==4&&http.status==200){
				var replay = http.responseText;
				if(replay=="success"){
					document.getElementById("show").innerHtTML="可以使用";				
					}else{
					document.getElementById("show").innerHtTML="不可以使用";	
					}
				}
			}
		}
		http.open("post","RegistServlet",true);
		http.sendRequestHeader("content-type","application/x-www-form-urlencoded");
	</script>
</body>
</html>