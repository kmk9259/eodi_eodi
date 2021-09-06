<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="semiProject.com.kh.board.model.vo.*"%>
    
   <%
   	Board b = (Board)request.getAttribute("b");
	Attachment at = (Attachment)request.getAttribute("at");
   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%@ include file="../common/menubar.jsp"%>


 <script>
        $(function () {
            var $header = $('header'); //헤더를 변수에 넣기
            var $page = $('.page-start'); //색상이 변할 부분
            var $window = $(window);
            var pageOffsetTop = $page.offset().top;//색상 변할 부분의 top값 구하기

            $window.resize(function () { //반응형을 대비하여 리사이즈시 top값을 다시 계산
                pageOffsetTop = $page.offset().top;
            });

            $window.on('scroll', function () { //스크롤시
                var scrolled = $window.scrollTop() >= pageOffsetTop; //스크롤된 상태; true or false
                $header.toggleClass('down', scrolled); //클래스 토글
            });
        });

    </script>


 

   


<section class="page-start">
    <!-- Blog Hero Begin -->
    <div class="blog-details-hero set-bg" data-setbg="<%= request.getContextPath() %>/resources/img/breadcrumb/breadcrumb-blog2.gif">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="blog__hero__text">
                        <div class="label">Trending</div>
                        <h2><%= b.getBoardTitle() %></h2>
                        <ul>
                            <li><i class="fa fa-clock-o"></i> <%= b.getCreateDate() %></li>
                            <li><i class="fa fa-user"></i><%= b.getBoardWriter() %></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog Hero End -->
    

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="blog__details__text">
                        <div class="blog__details__video set-bg" data-setbg="<%= request.getContextPath() %>/resources/img/blog/details/blog-video-bg.jpg">
                            
                        </div>
                        <p><%= b.getBoardContent() %></p>
                        <img src="<%= request.getContextPath() %>/resources/img/blog/details/blog-item.jpg" alt="">
                        
                        <table>
                        <th>첨부파일</th>
						<td>
							<% if(at != null){ %>
							<a download="<%= at.getOriginName() %>" href="<%=contextPath%>/resources/board_upfiles/<%=at.getChangeName()%>"><%= at.getOriginName() %></a>
							<% }else{ %>
							첨부파일이 없습니다.
							<% } %>
						</td> 
						</table>
						
                    </div>
                   
                    
                    <div class="blog__details__comment__form">
                        
                        <form action="#">
                        
                        <%-- <% if(loginUser != null) { %> --%>
                        
                        
                           <div class="blog__details__comment__title">
                            <h4>댓글 달기</h4>
                            
                            
                           </div>
                            <div class="input-comment">
                                <p>Comment</p>
                                <textarea></textarea>
                            </div>
                            <button type="submit" class="site-btn">댓글 등록</button>
                            
                       <%--      <% }else{ %> --%>
                            
                            <div class="input-comment">
                                <p>Comment</p>
                                <textarea>로그인한 사용자만 가능한 서비스입니다. 로그인 후 이용해주세요</textarea>
                            </div>
                            <button type="submit" class="site-btn" disabled>댓글 등록</button>
                            
                     <%--        <% } %> --%>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Searching...">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__recent">
                            <h5>Recent Post</h5>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= request.getContextPath() %>/resources/img/blog/recent-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span class="lanking">1</span>
                                    <h6>Tortoise grilled on salt</h6>
                                    <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= request.getContextPath() %>/resources/img/blog/recent-2.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span class="lanking">2</span>
                                    <h6>Shrimp floured and fried</h6>
                                    <p><i class="fa fa-clock-o"></i> 22th March, 2019</p>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= request.getContextPath() %>/resources/img/blog/recent-3.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span class="lanking">3</span>
                                    <h6>Sweet and sour pork ribs</h6>
                                    <p><i class="fa fa-clock-o"></i> 25th March, 2019</p>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= request.getContextPath() %>/resources/img/blog/recent-4.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span class="lanking">4</span>
                                    <h6>Crab fried with tamarind</h6>
                                    <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= request.getContextPath() %>/resources/img/blog/recent-5.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span class="lanking">5</span>
                                    <h6>Tortoise grilled on salt</h6>
                                    <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                                </div>
                            </a>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    </section>
    <!-- Blog Details Section End -->
    
    <!-- 댓글 등록 된거 보여질수 있게 ajax 통신 이용할것 -->
    <script>
    
    
    
    </script>
    
    
    
    
    <script src="<%= contextPath %>/resources/js/main.js"></script>

    
     <%@ include file="../common/footer.jsp"%> 
</body>
</html>