<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/vue2/Step01_event5.jsp</title>
</head>
<body>
	<div class="container" id="app">
		<h1>form submit 이벤트 처리</h1>
		<form action="send.jsp" method="post" @submit="onSubmit">
			<input type="text" name="msg" placeholder="메세지 입력..."/>
			<button type="submit">전송</button>
		</form>
		<h1>form submit 이벤트 처리2</h1>
		<!-- @submit.prevent 하면 폼 제출을 자동으로 막아준다 -->
		<form action="send.jsp" method="post" @submit.prevent="onSubmit2">
			<input type="text" name="msg" placeholder="메세지 입력..."/>
			<button type="submit">전송</button>
		</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script>
	new Vue({
		el:"#app",
		methods:{
			onSubmit2(e){
				//e.preventDefault() 하지 않아도 폼제출이 막아진다.
			},
			onSubmit(e){
				//폼 전송 막기
				e.preventDefault();
				//이벤트가 일어난 바로 그 요소는 form 이다.
				console.log(e.target);
				//폼에 입력한 내용을 FormData type 으로 얻어내기
				const data = new FormData(e.target); // e.target 은 form 의 참조값이다.
				//FormData 를 이용해서 query string 얻어내기
				const queryString = new URLSearchParams(data).toString();
				//action 속성의 value 읽어오기
				const url = e.target.action;
				//fetch() 함수를 이용해서 post 방식 요청하기
				fetch(url, {
					method:"POST",
					headers:{"Content-Type":"application/x-www-form-urlencoded; charset=utf-8"},
					body:queryString
				})
				.then(res=>res.json())
				.then(data=>{
					console.log(data);
				});
			}
		}
		
	});
		new Vue({
			el:"#app",
			methods:{
				onSubmit(e){
					//폼 전송 막기
					e.preventDefault();
					//이벤트가 일어난 바로 그 요소는 form 이다.
					console.log(e.target);
					//폼에 입력한 내용을 FormData type 으로 얻어내기
					const data = new FormData(e.target); // e.target 은 form 의 참조값이다.
					//FormData 를 이용해서 query string 얻어내기
					const queryString = new URLSearchParams(data).toString();
					//action 속성의 value 읽어오기
					const url = e.target.action;
					//fetch() 함수를 이용해서 post 방식 요청하기
					fetch(url, {
						method:"POST",
						headers:{"Content-Type":"application/x-www-form-urlencoded; charset=utf-8"},
						body:queryString
					})
					.then(res=>res.json())
					.then(data=>{
						console.log(data);
					});
				}
			}
		});
	</script>
</body>
</html>