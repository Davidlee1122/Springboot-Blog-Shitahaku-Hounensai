<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />
	<form>
		<div class="form-group">
			<label for="title">Title</label>
			<input type="text" class="form-control" placeholder="Enter title" id="title">
		</div>
		<div class="form-group">
			<label for="content">Content</label>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>		
	</form>
	<button id="btn-save" class="btn btn-primary">投稿完了</button>
</div>
<script>
	$('.summernote').summernote({
		tabsize : 2,
		height : 300
	});
</script>
<script src="/js/board/board.js"></script>
</body>
</html>


