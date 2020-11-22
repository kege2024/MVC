<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

<body>
	
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<!-- 이미지 슬라이드 -->
<ul class="slides">

    <input type="radio" name="radio-btn" id="img-1" checked />
    <li class="slide-container">
<div class="slide">
<img src="image/14.jpg" />
        </div>
<div class="nav">
<label for="img-6" class="prev">&#x2039;</label>
<label for="img-2" class="next">&#x203a;</label>
</div>
    </li>

    <input type="radio" name="radio-btn" id="img-2" />
    <li class="slide-container">
        <div class="slide">
<img src="image/15.jpg" />
        </div>
<div class="nav">
<label for="img-1" class="prev">&#x2039;</label>
<label for="img-3" class="next">&#x203a;</label>
</div>
    </li>

    <input type="radio" name="radio-btn" id="img-3" />
    <li class="slide-container">
        <div class="slide">
<img src="image/16.jpg" />
        </div>
<div class="nav">
<label for="img-2" class="prev">&#x2039;</label>
<label for="img-4" class="next">&#x203a;</label>
</div>
    </li>

<input type="radio" name="radio-btn" id="img-4" checked />
    <li class="slide-container">
<div class="slide">
<img src="image/4.jpg" />
        </div>
<div class="nav">
<label for="img-3" class="prev">&#x2039;</label>
<label for="img-5" class="next">&#x203a;</label>
</div>
    </li>

<input type="radio" name="radio-btn" id="img-5" checked />
    <li class="slide-container">
<div class="slide">
<img src="image/17.jpg" />
        </div>
<div class="nav">
<label for="img-4" class="prev">&#x2039;</label>
<label for="img-6" class="next">&#x203a;</label>
</div>
    </li>
    
<input type="radio" name="radio-btn" id="img-6" checked />
    <li class="slide-container">
<div class="slide">
<img src="image/18.jpg" />
        </div>
<div class="nav">
<label for="img-5" class="prev">&#x2039;</label>
<label for="img-1" class="next">&#x203a;</label>
</div>
    </li>        
    

    <li class="nav-dots">
      <label for="img-1" class="nav-dot" id="img-dot-1"></label>
      <label for="img-2" class="nav-dot" id="img-dot-2"></label>
      <label for="img-3" class="nav-dot" id="img-dot-3"></label>
      <label for="img-4" class="nav-dot" id="img-dot-4"></label>
      <label for="img-5" class="nav-dot" id="img-dot-5"></label>
      <label for="img-6" class="nav-dot" id="img-dot-6"></label>
    </li>
</ul>
<!-- 이미지 슬라이드 end -->

<!-- Main Content Start -->
        <div class="dining-area dining-padding-top">
            <!-- Single Left img -->
            <div class="single-dining-area left-img">
            <div align="right">
                <div class="container">
                    <div class="row justify-content-end">
                        <div align="right">
                            
                                <span>Audi</span>
                                <h3>Driving & Speed</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br>veniam, quis nostrud.</p>
                                <a href="#" class="btn border-btn">Learn More <i class="ti-angle-right"></i> </a>
                            
                        </div>
                    </div>
                </div>
                </div>
            </div> 
            <!-- single Right img -->
            <div class="single-dining-area right-img">
                <div align="left">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-lg-8 col-md-8">
                            
                                <span>Ferrari</span>
                                <h3>Driving & Speed</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br>veniam, quis nostrud.</p>
                                <a href="#" class="btn border-btn">Learn More  <i class="ti-angle-right"></i></a>
                           
                        </div>
                    </div>
                </div>
            </div> 
            </div>
        </div>
<!-- Main Content End -->




<!-- 게시판 미리보기 부분 -->
<div class="container" style="margin-top:100px">
	<div class="row">
		<c:forEach var='sub_list' items="${list }" varStatus="idx">
		<div class="col-lg-6" style="margin-top:20px">
			<div class="card shadow">
				<div class="card-body">
					<h4 class="card-title">${board_list[idx.index].board_info_name }</h4>
					<table class="table table-hover" id='board_list'>
						<thead>
							<tr>
								<th class="text-center w-25">글번호</th>
								<th>제목</th>
								<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var='obj' items='${sub_list }'>
							<tr>
								<td class="text-center">${obj.content_idx }</td>
								<th><a href='${root }board/read?board_info_idx=${board_list[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1'>${obj.content_subject }</a></th>
								<td class="text-center d-none d-xl-table-cell">${obj.content_date }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<a href="${root }board/main?board_info_idx=${board_list[idx.index].board_info_idx}" class="btn btn-primary">더보기</a>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
	<!-- 게시판 미리보기 end -->
	
	
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>









    