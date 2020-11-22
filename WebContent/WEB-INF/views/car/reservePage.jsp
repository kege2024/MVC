<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<!-- content start -->



	<div class="container" style="margin-top:100px">
				<h4 class="card-title">차량 예약</h4>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action='${root }car/reservePage_pro' method='post' modelAttribute="carReserveBean">
						<%-- <form:hidden path="no"/> --%>
						<div class="form-group">
						
					
						<tr>
						<td class="text-center d-none d-md-table-cell" style="vertical-align:middle;"><a href='#'>${name }</a></td>
						<td class="text-center d-none d-md-table-cell"><a href="#">
						<img src="../image/${img }" width="200" height="100"></a></td>
						</tr>
						
							<form:label path="name">차량 이름</form:label>
							<form:input path="name" class='form-control'/>
							<form:errors path='name' style='color:red' />
						</div>
						<div class="form-group">
							<form:label path="img">이미지</form:label>
							<form:textarea path="price" class="form-control" rows="10" style="resize:none"/>
							<form:errors path='price' style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="img">이미지</form:label>
							<form:input path='img' class="form-control"/>
						</div>
						<div class="form-group">
							<div class="text-right">
								<form:button class='btn btn-primary'>작성하기</form:button>
							</div>
						</div>
					
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
				
	



	<!-- content end -->

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>



