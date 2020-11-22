<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">이벤트 차량</h4>
  <section class="room-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                            </div>
                        </div>
                    </div>
                </div>
	
 <div class="row">
  					<div class="col-xl-6 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="../image/24.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">New Car</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
 				   <div class="col-xl-6 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="../image/25.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">New Car</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
  				  <div class="col-xl-6 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="../image/22.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">New Car</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="../image/23.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">New Car</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                 
 				   
 					  </div>
                <div class="row justify-content-center">
                    <div class="room-btn pt-70">
                    </div>
                </div>
            </div>
        </section>
</div>
</div>
</div>








<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>
