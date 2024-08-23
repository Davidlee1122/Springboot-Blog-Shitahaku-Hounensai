<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.custom-btn {
    border: 1px solid #000; 
    padding: 
    border-radius: 5px; 
    text-decoration: none; 
}
.btn-container {
    display: flex;
    justify-content: space-between; /* 버튼을 왼쪽, 중앙, 오른쪽에 균등하게 배치 */
    align-items: center; /* 버튼들이 세로로 중앙에 정렬 */
    width: 100%; /* 부모 컨테이너의 너비를 100%로 설정 */
    max-width: 800px; /* 필요에 따라 최대 너비 설정 */
    margin: 0 auto; /* 부모 컨테이너를 가로로 중앙에 배치 */
    padding: 20px; /* 버튼 주위에 여백 추가 */
}
.custom-hr {
    border: 0;
    height: 1px;
    background-color: rgba(0, 0, 0, 0.3); /* 투명도를 조절하여 더 얇게 보이도록 만듦 */
    width: 100%;
    margin: 0 auto;
}
</style>
<div id="demo" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner" style="text-align: center;">
			<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/images/1.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/images/2.jpg" class="d-block w-100">
			</div>
			<div class="carousel-item">
				<img src="${pageContext.request.contextPath}/images/3.jpg" class="d-block w-100">
			</div>
		</div>
	</div>
	<br />
<div class="container">
	<br />
	<c:forEach var="board" items="${boards.content}">
		<div class="card m-2">
			<div class="card-body" style="text-align: right;">
				<h4 class="card-title">${board.title}</h4>
				<p class="card-text">
					<fmt:formatDate value="${board.createDate}" pattern="yyyy.MM.dd" />
				</p>
				<a href="/board/${board.id}" class="btn custom-btn"">詳細</a>
			</div>
		</div>
	</c:forEach>

	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">前へ</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">前へ</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${boards.last}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">次へ</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">次へ</a></li>
			</c:otherwise>
		</c:choose>

	</ul>
		
	<div class="btn-container">
    <a href="/auth/aboutForm" class="btn custom-btn">豊年祭について</a>
    <a href="/auth/pastarticles" class="btn custom-btn">過去の記事</a>
    <a href="/auth/aboutForm" class="btn custom-btn">関連記事</a>
	</div>
	<hr class="custom-hr">
</div>
<%@ include file="layout/footer.jsp"%>


