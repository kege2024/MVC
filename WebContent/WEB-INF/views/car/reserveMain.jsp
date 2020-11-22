<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<!-- content start -->


	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">차량 조회</h4>
				<table class="table table-hover" id='car_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">차량 이름</th>
							<th class="w-50" style="text-align:center;">사진</th>
							<th class="text-center d-none d-md-table-cell">차량 정원</th>
							<th class="text-center d-none d-md-table-cell">가격</th>
							<th class="text-center d-none d-md-table-cell">차량 회사</th>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach var='obj' items="${carList }">
					<tr>
						<td class="text-center d-none d-md-table-cell" style="vertical-align:middle;"><a href="${root }car/reservePage?no=${no}&img=${img}">${obj.name }</a></td>
						<td class="text-center d-none d-md-table-cell"><a href="#">
						<img src="../image/${obj.img }" width="200" height="100"></a></td>
						<td class="text-center d-none d-md-table-cell" style="vertical-align:middle;">${obj.usepeople }</td>
						<td class="text-center d-none d-md-table-cell" style="vertical-align:middle;">${obj.price }</td>
						<td class="text-center d-none d-md-table-cell" style="vertical-align:middle;">${obj.company }</td>
					</tr>
					</c:forEach>
				</tbody>
				</table>
			</div>
		</div>
	</div>



	<!-- content end -->

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>



