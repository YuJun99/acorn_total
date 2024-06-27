<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/include/footer_test.jsp</title>
<style>
	/* sticky footer 를 만들기 위한 css */
	body{
		min-height: 100vh; /* 최소 높이를 뷰포트(웹브라우저의 창) 높이와 같게 설정*/
		display:flex;
		flex-direction: column; /* main 축을 세로 방향으로 설정 */
		border: 1px solid red;
	}
	.container{
		flex: 1; /* 남는 높이를 다 가질 수 있도록 */
	}
	
</style>
</head>
<body>
	<div class="container">
		<h1>sticky footer 테스트 페이지</h1>
		<div class="content" style="height:600px; background-color:yellow">
			내용 입니다.
		</div>
	</div>
	<div class="footer" style="height:200px; background-color:green;">
		하단 footer 입니다.
	</div>
</body>
</html>