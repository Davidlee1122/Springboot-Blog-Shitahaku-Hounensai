<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">

	<button class="btn btn-secondary" onclick="history.back()">戻る</button>
	<div style="text-align: right;">
		<br /> 
		記事の番号 : <span id="id"><i>${board.id} </i></span> 
		作成者 : <span><i>${board.user.username} </i></span> <br />
	</div>
	<div>
		<h3>${board.title}</h3>
	</div>
	<hr />
	<div>
		<div>${board.content}</div>
	</div>
	<hr />
	<c:if test="${board.user.id == principal.user.id}">
	<div style="text-align: right;">
		<a href="/board/${board.id}/updateForm" class="btn btn-warning">修正</a>
		<button id="btn-delete" class="btn btn-danger">削除</button>
	</div>	
</c:if>
</div>
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<br />
<script src="/js/board/board.js"></script>
<%@ include file="../layout/footer.jsp"%>


