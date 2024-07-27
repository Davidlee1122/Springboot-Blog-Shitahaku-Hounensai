<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container">
	<div id="画面" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#画面" data-slide-to="0" class="active"></li>
			<li data-target="#画面" data-slide-to="1"></li>
			<li data-target="#画面" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/1.jpg" width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img src="2.jpg"  width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img src="3.jpg" width="1100" height="500">
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next"> <span class="carousel-control-next-icon"></span>
		</a>
	</div>
	<br />
	<c:forEach var="board" items="${boards.content}">
		<div class="card m-2">
			<div class="card-body" style="text-align: right;">
				<h4 class="card-title">${board.title}</h4>
				<p class="card-text">
					<fmt:formatDate value="${board.createDate}" pattern="yyyy.MM.dd" />
				</p>
				<a href="/board/${board.id}" class="btn btn-primary">詳細</a>
			</div>
		</div>
	</c:forEach>

	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${boards.first}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number-1}">Previous</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${boards.last}">
				<li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="?page=${boards.number+1}">Next</a></li>
			</c:otherwise>
		</c:choose>

	</ul>

</div>

<%@ include file="layout/footer.jsp"%>


