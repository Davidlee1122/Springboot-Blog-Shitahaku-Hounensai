<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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


