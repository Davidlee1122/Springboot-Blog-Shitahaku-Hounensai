<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
header.masthead {
	background-image: url('${pageContext.request.contextPath}/images/12.jpg');
	background-repeat: no-repeat;
	background-size: cover; /* 전체 배경을 채우도록 설정 */
	background-position: center; /* 배경을 중앙에 위치 */
	height: 50vh; /* 헤더 높이를 50vh로 설정 */
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	color: white; /* 텍스트 색상을 흰색으로 설정 */
}

.container-custom {
	max-width: 800px; /* 최대 너비를 800px로 설정 */
	margin: 0 auto; /* 가로로 중앙 정렬 */
	padding: 20px; /* 내부 여백 추가 */
	text-align: center; /* 텍스트 중앙 정렬 */
	border: 3px solid rgba(0, 0, 0, 0.1); /* 아주 옅은 테두리 추가 */
	border-radius: 8px; /* 모서리를 둥글게 설정 (선택사항) */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.05); /* 옅은 그림자 추가 (선택사항) */
}

.container-custom2 {
	max-width: 800px; /* 최대 너비를 800px로 설정 */
	margin: 0 auto; /* 가로로 중앙 정렬 */
	padding: 20px; /* 내부 여백 추가 */
	text-align: center; /* 텍스트 중앙 정렬 */
	border: 1px solid rgba(0, 0, 0, 0.1); /* 아주 옅은 테두리 추가 */
	border-radius: 8px; /* 모서리를 둥글게 설정 (선택사항) */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.05); /* 옅은 그림자 추가 (선택사항) */
}

.highlighted-text {
	display: inline;
	box-shadow: inset 0 -25px 0 #D9FCDB;
	/*-10px은 highlight의 두께*/
}

.highlighted-text2 {
	display: inline;
	box-shadow: inset 0 -15px 0 #D9FCDB;
	/*-10px은 highlight의 두께*/
}

.custom-hr {
	border: 0;
	height: 1px;
	background-color: rgba(0, 0, 0, 0.3); /* 투명도를 조절하여 더 얇게 보이도록 만듦 */
	width: 100%;
	margin: 0 auto;
}
</style>
</head>
<header class="masthead">
    <p style="font-size: 60px; color: black; font-weight: bold;">関連記事</p>
</header>
<br />
<br />

<div class="container">
	<br />
	<div class="card">
		<img class="card-img-top" src="${pageContext.request.contextPath}/images/6.jpg" alt="Card image" style="width:50%; height:auto; display: block; margin: 0 auto;">
		<div class="card-body" style="text-align: left;">
			<h4 class="card-title">【芸能の継承と地域づくり1】八重瀬町志多伯の豊年祭</h3>
			<h5 class="card-text">しまかる−沖縄県文化情報ポータルサイト</h4>
			<a href="https://www.shimacul.okinawa/special/3313/">https://www.shimacul.okinawa/special/3313/</a>
		</div>
	</div>
	<br />
	<div class="card">
		<img class="card-img-top" src="${pageContext.request.contextPath}/images/7.jpg" alt="Card image" style="width:50%; height:auto; display: block; margin: 0 auto;">
		<div class="card-body" style="text-align: left;">
			<h4 class="card-title">「獅子加那志の鎮まれる村」</h3>
			<h5 class="card-text">(一財)地域創造−地域文化資産ポータル</h4>
			<a href="https://bunkashisan.ne.jp/bunkashisan/47_okinawa/7237.html">https://bunkashisan.ne.jp/bunkashisan/47_okinawa/7237.html</a>
		</div>
	</div>
	<br />
	<div class="card">
		<img class="card-img-top" src="${pageContext.request.contextPath}/images/8.jpg" alt="Card image" style="width:50%; height:auto; display: block; margin: 0 auto;">
		<div class="card-body" style="text-align: left;">
			<h4 class="card-title">ドキュメンタリー映画『うむい獅子-仲宗根正廣の獅子づくり-』</h3>
			<h5 class="card-text">海燕社</h4>
			<a href="https://www.kaiensha.jp/umuijishi_store.html">https://www.kaiensha.jp/umuijishi_store.html</a>
		</div>
	</div>
	<br />
	<div class="card">
		<img class="card-img-top" src="${pageContext.request.contextPath}/images/9.jpg" alt="Card image" style="width:50%; height:auto; display: block; margin: 0 auto;">
		<div class="card-body" style="text-align: left;">
			<h4 class="card-title">獅子加那志豊年祭</h3>
			<h5 class="card-text">NPO日本の祭りネットワーク</h4>
			<a href="https://www.nippon-matsuri.net/report/shishiganasi/">https://www.nippon-matsuri.net/report/shishiganasi/</a>
		</div>
	</div>
	<hr class="custom-hr">
</div>
<%@ include file="../layout/footer.jsp"%>


