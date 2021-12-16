<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>리뷰 수정</title>

<style>
* {
	box-sizing: border-box;
}

.container {
	position: relative;
	width: 800px;
	height: 350px;
	margin: auto;
	top: 50px;
}

.container>div {
	margin-bottom: 15px;
}

.title {
	color: rgb(255, 136, 0);
}

#viewText {
	width: 100%;
	height: 200px;
}

.btnCLs {
	text-align: right;
}

textarea {
	width: 100%;
	height: 6.25em;
	resize: none;
	text-overflow: initial;
}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath}/viewModifyProc.vi"
		;
		id="viewForm" method="post">
		<div class="container">
			<div class="row">
				<div class="col title">
					<h2>${dto.getRest_name()}</h2>
				</div>
			</div>
			<div class="row">
				<textarea type="text" id="viewText" name="review_content"
					value="${dto.getReview_content()}">${dto.getReview_content()}</textarea>
			</div>

			<div class="btnCLs">
				<button type="button" class="btn btn-secondary" id="btnCancel">취소</button>
				<button type="button" class="btn btn-secondary" id="btnModify">수정</button>
			</div>
			<input type="text" name="seq_rest" value="${dto.getSeq_rest()}"
				hidden> <input type="text" name="seq_view"
				value="${dto.getSeq_view()}" hidden>
		</div>
	</form>
	<script>
		document.getElementById("btnCancel").addEventListener("click",
				function() {
					location.href="/toRestDetailView.re?seq_rest=${dto.getSeq_rest()}";
				});

		document.getElementById("btnModify").onclick = function() {
					if (document.getElementById("viewText").value == "") {
						alert("내용을 입력하세요.");
						return;
					}
					document.getElementById("viewForm").submit();
				};
	</script>
</body>
</html>