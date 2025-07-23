<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  padding: 5px 35px;
  background-color:#9B99FF;
  border-bottom:1px solid #333;
}

.header-left .logo {
  width: 200px;
  height: 75px;
  object-fit: fill;
 
}

.header-right {
  display: flex;
  flex-direction: column;
  align-items: flex-end;
}

.header-right-top {
  display: flex;
  gap: 10px;
  margin-bottom: 10px;
  align-items: center;
}

.login-btn {
  padding: 6px 12px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 6px;
}

.login-btn .user-icon {
  width: 16px;
  height: 16px;
}

.menu {
  margin-top: 10px;
}

.menu a {
  margin-left: 10px;
  margin-right: 10px;
  text-decoration: none;
  color: white;
}

.header-right a {
  margin-left: 10px;
  margin-right: 10px;
  text-decoration: none;
  color: white;
}



</style>
</head>
<div class="header">
  <div class="header-left">
    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="로고" class="logo">
  </div>

  <div class="header-right">
  <div class="header-right-top">
   <div class="login-btn" onclick="location.href='/user/login.jsp'">
     <a><strong><em>Logout</em></strong></a>
    </div>
      <a href="/me/mypage.jsp"><strong><em>My Page</em></strong></a>
  </div>
  
    <div class="menu">
      <a href="/pms/main.jsp"><strong><em>PMS</em></strong></a>
      <a href="/sns/main.jsp"><strong><em>SNS</em></strong></a>
      <a href="/funding/main.jsp"><strong><em>Crowd Funding</em></strong></a>
    </div>
  </div>
</div>

</html>
