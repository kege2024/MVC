<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/front/css/custom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>

<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">

	<a class="navbar-brand" href="${root }main">Sabsalgae</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	
<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

<li class="dropdown"><a href="#" id="dropdownCategoryMenu" data-toggle="dropdown"><i class="fa fa-folder-open"></i> 차량대여 <i class="caret"></i></a>

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
			<li class="nav-item"><a href="${root }car/reserveMain" class="nav-link">차량 조회</a></li>
			<li class="nav-item"><a href="${root }car/reservePage" class="nav-link">차량 예약</a></li>
			<li class="nav-item"><a href="#" class="nav-link">예약 확인</a></li>
			<li class="nav-item"><a href="${root }car/event" class="nav-link">이벤트</a></li>		
		</ul>
		</li>		

<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

<li class="dropdown"><a href="#" id="dropdownCategoryMenu" data-toggle="dropdown"><i class="fa fa-folder-open"></i> 커뮤니티 <i class="caret"></i></a>

<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
			<c:forEach var='obj' items='${topMenuList }'>
			<li class="nav-item">
				<a href="${root }board/main?board_info_idx=${obj.board_info_idx}" class="nav-link">${obj.board_info_name }</a>
			</li>
			</c:forEach>
		</ul>
		</li>		
		
		
		<ul class="navbar-nav ml-auto">
			<c:choose>
				<c:when test="${loginUserBean.userLogin == true }">
					<li class="nav-item">
						<a href="${root }user/modify" class="nav-link">정보수정</a>
					</li>
					<li class="nav-item">
						<a href="${root }user/logout" class="nav-link">로그아웃</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item">
						<a href="${root }user/login" class="nav-link">로그인</a>
					</li>
					<li class="nav-item">
						<a href="${root }user/join" class="nav-link">회원가입</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			
		</ul>
	</div>
</nav>
<!-- 상단메뉴 end -->


