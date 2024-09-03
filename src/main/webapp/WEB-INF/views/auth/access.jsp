<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<style>
header.masthead {
	background-image: url('${pageContext.request.contextPath}/images/4.jpg');
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
	max-width: 1200px; /* 최대 너비를 800px로 설정 */
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
.highlighted-text{
  display: inline;
  box-shadow: inset 0 -25px 0 #D9FCDB; 
  /*-10px은 highlight의 두께*/
}
.highlighted-text2{
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
    <p style="font-size: 60px; color: black; font-weight: bold;">アクセス</p>
</header>
<br /><br />
<div class="container">
<div class="container container-custom" style="text-align: center;">
	<h3 class="highlighted-text2">🗾 那覇空港自動車道「南風原南」ICより約12分</h3>
	<br />
	<h3 class="highlighted-text2">🗾 もしくは、バス「那覇バスターミナル」乗換～35番・100番の沖縄バス「志多伯入口」・「志多伯」下車</h3>	
</div>
	<br/>
	<hr class="custom-hr">
</div>
<%@ include file="../layout/footer.jsp"%>


