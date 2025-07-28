<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<%-- 공통 CSS 파일 연결 --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/issuelist.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
/* 기존 style 태그 내용은 유지하거나 issueList.css로 옮길 수 있습니다. */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f0f2f5;
	display: flex;
	height: 100vh;
	overflow: hidden;
}

.wrapper {
	display: flex;
	width: 100%;
}

.main-content {
	flex-grow: 1;
	padding: 20px;
	background-color: #f0f2f5;
	overflow-y: auto;
	display: flex;
	flex-direction: column;
}

/* 임시 메인 헤더와 페이지 제목은 그대로 둡니다. */
.temporary-main-header {
	display: flex;
	justify-content: flex-end;
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.temporary-main-header .nav-item {
	font-size: 16px;
	font-weight: bold;
	margin-left: 30px;
	color: #555;
	text-decoration: none;
}

.temporary-main-header .nav-item:hover {
	color: #6A3CD7;
}

.page-title {
	font-size: 24px;
	color: #333;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<%-- 사이드바 포함 --%>
		<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />

		<div class="main-content">

			<%-- 페이지 제목 "이슈" --%>
			<h1 class="page-title">이슈</h1>

			<div class="content-area">
				<%-- 검색창 및 이슈 생성 버튼 영역 --%>
				<div class="issue-controls">
					<div class="search-bar">
						<i class="fas fa-search search-icon"></i> <input type="text"
							placeholder="이슈 검색">
					</div>
					<button class="create-issue-btn" onclick="openCreateIssueModal()">
						<i class="fas fa-plus"></i> 새 이슈
					</button>
				</div>


				<%-- 이슈 목록 테이블 영역 --%>
				<div class="issue-list-container">
					<table class="issue-table">
						<thead>
							<tr>
								<th></th>
								<th>이슈 명</th>
								<th>상태</th>
								<th>긴급도</th>
								<th>담당자</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><i class="far fa-circle status-icon ongoing"></i></td>
								<td>ISSUE-220 긴급 오류 발생</td>
								<td><span class="status-badge ongoing-badge">Ongoing</span></td>
								<td>Critical</td>
								<td><img
									src="${pageContext.request.contextPath}/resources/images/user_avatar_1.png"
									alt="User" class="user-avatar"></td>
							</tr>
							<tr>
								<td><i class="far fa-check-circle status-icon completed"></i></td>
								<td>ISSUE-210 로그인 기능 개선</td>
								<td><span class="status-badge completed-badge">Completed</span></td>
								<td>Moderate</td>
								<td><img
									src="${pageContext.request.contextPath}/resources/images/user_avatar_2.png"
									alt="User" class="user-avatar"></td>
							</tr>
							<tr>
								<td><i class="far fa-circle status-icon inreview"></i></td>
								<td>ISSUE-205 UI/UX 디자인 개선</td>
								<td><span class="status-badge inreview-badge">In
										review</span></td>
								<td>Minor</td>
								<td><img
									src="${pageContext.request.contextPath}/resources/images/user_avatar_3.png"
									alt="User" class="user-avatar"></td>
							</tr>
							<tr>
								<td><i class="far fa-circle status-icon pending"></i></td>
								<td>ISSUE-198 데이터베이스 연동 문제</td>
								<td><span class="status-badge pending-badge">Pending</span></td>
								<td>High</td>
								<td><img
									src="${pageContext.request.contextPath}/resources/images/user_avatar_4.png"
									alt="User" class="user-avatar"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<%-- !!! 이슈 생성 모달 및 오버레이 추가 !!! --%>
		<div id="modalOverlay" class="modal-overlay"></div>
		<div id="createIssueModal" class="modal">
			<h2>새 이슈 생성</h2>
			<div class="modal-content">
				<label for="issueTitle">이슈 이름</label> <input type="text"
					id="issueTitle" name="issueTitle"> <label
					for="issueDescription">이슈 설명</label>
				<textarea id="issueDescription" name="issueDescription"></textarea>

				<label for="priority">우선순위</label> <select id="priority"
					name="priority">
					<option value="High">높음</option>
					<option value="Medium">중간</option>
					<option value="Low">낮음</option>
				</select> <label for="dueDate">마감일</label> <input type="date" id="dueDate"
					name="dueDate">

				<div class="modal-buttons">
					<button type="button" class="confirm-btn">확인</button>
					<button type="button" class="cancel-btn"
						onclick="closeCreateIssueModal()">취소</button>
					<%-- onclick 이벤트 추가 --%>
				</div>
			</div>
		</div>
	</div>

	<script>
		function openCreateIssueModal() {
			document.getElementById('modalOverlay').style.display = 'block';
			document.getElementById('createIssueModal').style.display = 'block';
			document.body.classList.add('modal-active'); // 배경 흐림을 위한 클래스 추가
		}

		function closeCreateIssueModal() {
			document.getElementById('modalOverlay').style.display = 'none';
			document.getElementById('createIssueModal').style.display = 'none';
			document.body.classList.remove('modal-active'); // 배경 흐림 클래스 제거
		}
	</script>
</body>
</html>