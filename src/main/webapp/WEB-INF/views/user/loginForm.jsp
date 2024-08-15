<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<style>
    /* 전체 화면 크기를 채우는 컨테이너 설정 */
    .container {
        display: flex;
        justify-content: center; /* 가로축 중앙 정렬 */
        align-items: center; /* 세로축 중앙 정렬 */
        height: 100vh; /* 뷰포트 높이를 100%로 설정 */
    }

    /* 폼 크기 설정 (필요에 따라 수정 가능) */
    form {
        width: 300px;
    }
</style>

<div class="container" st>
	<form action="/auth/loginProc" method="post">
		<div class="form-group">
			<label for="username">Username</label> 
			<input type="text" name="username" class="form-control" placeholder="Enter username" id="username">
		</div>
		<div class="form-group">
			<label for="password">Password</label> 
			<input type="password" name="password" class="form-control" placeholder="Enter password" id="password">
		</div>
		<button id="btn-login" class="btn btn-primary">ログイン</button>
	</form>
	

</div>
</body>
</html>


