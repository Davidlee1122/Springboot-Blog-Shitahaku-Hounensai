<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<style>
header.masthead {
	background-image: url('${pageContext.request.contextPath}/images/4.jpg');
	background-repeat: no-repeat;
	background-size: cover; /* 전체 배경을 채우도록 설정 */
	background-position: center; /* 배경을 중앙에 위치 */
	height: 75vh; /* 헤더 높이를 50vh로 설정 */
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
</style>
</head>
<header class="masthead">
	<p style="font-size: 65px">豊年祭について</p>
</header>
<br /><br />
<div class="container container-custom" style="text-align: center;">
	<h1 class="highlighted-text">志多伯獅子加那志の年忌祭</h1>
	<br /><br />
	<div class="container container-custom2">		
		<h3 class="highlighted-text2">ムラの守護神の獅子</h3>
		<br /><br />
		<h5>獅子舞は、アジア経由で伝来したと伝えられ、 沖縄本島をはじめ各離島などの古い集落にあって、豊年祭や危払いの行事に演じられている。 獅子は、百獣の王として、その威厳をあがめ、そして尊厳なるものと信じ、獅子によってあらゆる災厄が払われるものという思想が強く込められている。字志多伯では、その獅子加那志をムラの守護神として崇め、年忌祭の行事として旧暦の八月十五夜の豊年祭を盛大に催す。
			なぜ法事の年忌を用いているかは不詳だが、琉球王府の諸行事が、年忌ごとに催されることが
			あることから何らかの関連があったのであろう。獅子舞については、民の無病息災と五穀豊穣を願って演舞される。約300年の歴史を持つと伝えられている。獅子については獅子加那志と尊敬をもって呼ばれており、「加那志」とは王様を呼ぶのに「御主加那志」ということと同様である。いわゆる至尊に対する尊敬語である。ムラの守護神である獅子加那志は、旧暦八月十五夜（豊年祭）のみ字内で演じられ、年忌以外の使用は禁じられている。
		</h5>
	</div>
	<br /> <br />
	<div class="container container-custom2">
		<h3 class="highlighted-text2">獅子加那志の年忌行事</h3>
		<br /><br />
		<h5>獅子の年忌祈願は人の年忌法要と一緒で、1年忌、3年忌、7年忌、13年忌、25年忌、33年忌と催され、その都度、年忌祈願が行われている。その全法要が終わった後は、また最初に戻って、その儀式が繰り返されるものである。戦後すぐに再生した志多伯橋子那志は、昭和21年の1年忌の起源から、令和6年の年忌祈願年は、戦後3巡目の13年忌を迎える。一般的に各ムラムラにおいては、年忌行事のある年には、獅子の毛を新しく取り替えたり、補修をするなど、獅子の個体維持がなされている。又、獅子頭が老化したときには、獅子頭その物を焼いて、土に埋めて新しく獅子頭が製作されている。しかし、志多伯の獅子加那志は、戦後1年目の昭和21年の再生（製作）から78年になるが、獅子舞保存会や多くの関係者の方々のご尽力により
			、未だ見事にその御神体を保ち続けている。 今後も志多伯や字民の守り神として、ムラの誇る宝として、大事にし、そして更にその御加護を願うものである。</h5>
	</div>
	<br /> <br />
	<div class="container container-custom2">
		<h3 class="highlighted-text2">まつりの１日</h3>
		<br /><br />
		<h5>主役である獅子舞の演舞をはじめ、
			当日は、午前中に、神人とムラの氏神である御嶽に、ムラの繁栄と作物の豊穣を祈願する。昼すぎから村芝居に出演する全員が「道ズネー（ジュネー）」といって芸装で行列をつくって練り歩く。そして遊び庭で、総踊りで座を一巡して奉納する。夕暮れになると、舞台が始まる。まず座清めとして舞方で幕を開け、長者の大主、舞踊、狂言、芝居、武の舞、組踊などが夜中まで行われる。獅子舞は、前獅子、中獅子、後獅子と3回演じられる。これがまつりの1日目であり、翌日は夜の舞台からはじまる。</h5>
	</div>
</div>
<br />
<br />
<%@ include file="../layout/footer.jsp"%>


