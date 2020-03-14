<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>更新前</div><br>
	<button id="update">点击</button>
	<script type="text/javascript">
		document.getElementById("update").onclick(){
			var http = new XMLHttpRequest();
			http.onreadystatechange(){
				if(http.onreadystatechange==4&&http.status==200){
					document.getElementById("update").InnerHTML=http.responseText;
				}
			}
			http.open("get","test.txt",true);
			http.send();
		}
	</script>
</body>
</html>