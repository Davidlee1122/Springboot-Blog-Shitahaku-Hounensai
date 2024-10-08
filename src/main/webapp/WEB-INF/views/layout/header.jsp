<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@600&display=swap" rel="stylesheet">
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
body {
        font-family: "Noto Sans JP", sans-serif;
  	font-optical-sizing: auto;
 	font-weight: 600;
  	font-style: normal;
    }
</style>
<title>志多伯 Shitahaku</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-site-verification" content="twWGEv7WWTgyyCuFyr0NXr2EpKHE2S0ZCPZxEqvz6RU" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
	<nav class="navbar bg-light navbar-light d-flex justify-content-center">
		<a class="nav-link"  href="/auth/loginForm" style="color: #ffffff">◁</a>
		<a class="navbar-brand mx-auto"  href="/">志多伯　Shitahaku</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<c:choose>
				<c:when test="${empty principal}">
					<ul class="navbar-nav">												
						<li class="nav-item"><a class="nav-link" href="/auth/aboutForm">豊年祭について</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/pastarticles">過去の記事</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/relatedarticles">関連記事</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/access">アクセス</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="/auth/aboutForm">豊年祭について</a></li>
						<li class="nav-item"><a class="nav-link" href="/auth/pastarticles">過去の記事</a>
						<li class="nav-item"><a class="nav-link" href="/board/saveForm">投稿</a></li>
						<li class="nav-item"><a class="nav-link" href="/user/updateForm">会員情報</a>
						<li class="nav-item"><a class="nav-link" href="/logout">ログアウト</a>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</nav>
