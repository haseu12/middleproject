<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>이슈 상세</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/issueDetail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="wrapper">
        <jsp:include page="/WEB-INF/views/common/sidebar.jsp" />

        <div class="main-content">
            <div class="page-header">
                <h2 class="page-title">이슈 상세</h2>
                <div class="action-buttons">
                    <button class="btn btn-primary"><i class="fas fa-plus-circle"></i> 이슈 수정</button>
                    <button class="btn btn-danger"><i class="fas fa-trash-alt"></i> 이슈 삭제</button>
                </div>
            </div>

            <div class="issue-detail-card">
                <div class="detail-section">
                    <label for="issueName">이슈이름</label>
                    <input type="text" id="issueName" value="ISU-15" readonly>
                </div>
                <div class="detail-section">
                    <label for="taskName">일감이름</label>
                    <input type="text" id="taskName" value="TSK-13(클릭하면 해당일감으로 이동합니다.)" readonly>
                </div>
                <div class="detail-section">
                    <label for="issueContent">이슈내용</label>
                    <textarea id="issueContent" rows="5" readonly>내용을 입력하세요.</textarea>
                </div>

                <div class="comments-section">
                    <h3>댓글</h3>
                    <div class="comment-input-area">
                        <textarea placeholder="댓글을 입력하세요" rows="2"></textarea>
                        <button class="btn btn-secondary">추가하기</button>
                    </div>
                    <div class="comment-list">
                        <div class="comment-item">
                            <span class="comment-author">Kim mimi</span> <span class="comment-time">added a comment 2 hours ago</span>
                            <button class="comment-options-btn"><i class="fas fa-ellipsis-h"></i></button>
                            <p class="comment-text">댓글메시</p>
                        </div>
                        </div>
                </div>

                <div class="form-actions">
                    <button class="btn btn-primary">확인</button>
                    <button class="btn btn-cancel">취소</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>