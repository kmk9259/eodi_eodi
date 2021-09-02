<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>어디어디</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!--JS-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<!-- 제이쿼리 피커데이트 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	
	
	<!--드롭다운-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	


		<style>
		
		/* 위치 */
		.loca_1{
			float: left;
			margin-left: 10%;
			text-align: center;
			border: 1px solid pink;
			background-color: #D958A0;
			padding: 5%;
			border-radius: 2em;
		}
		
		/* 날짜 */
		.date_1{ 
			float: right;
			margin-right: 10%;
			text-align: center;
			border: 1px solid pink;
			background-color: #D958A0;
			padding: 5%;
			border-radius: 2em;
			
		}
		</style>

</head>

<body>
    <!-- Page Preloder -->
	<!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

     <%@ include file="../common/menubar.jsp"%>


		<!-- 페이지 상단부  -->
		<!-- Listing Section Begin  -->
		<section class="listing-hero set-bg" data-setbg="<%= contextPath %>/resources/img/breadcrumb/breadcrumb-blog2.gif">
		<div class="container">
		    <div class="row">
		        <div class="col-lg-8">
		            <div class="listing__hero__option">
		
		                <div class="listing__hero__text">
		                    <h2>추천 일정</h2>
		                    <div class="breadcrumb__option">
		                        <a href="./index.jsp"><i class="fa fa-home"></i> 홈</a>
		                        <span>추천일정</span>
		                    </div>
		                    <p> 테마와 위치 날짜를 선택하시면 일정을 추천해 드립니다!</p>
		                </div>
		            </div>
		        </div>
		
		    </div>
		</div>
		</section>

<section class="page-start">
    <!--메뉴바 같이 내려오는 시작점 -->

    <section class="most-search spad">
        <section class="most-search spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>STEP 1</h2>
                            <p>아래에서 원하시는 테마를 선택해주세요</p>
                        </div>
                    </div>
                </div>


                <!-- step1 form 시작점  -->
            <form action="">
                <div class="tab-content">
                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="<%= contextPath %>/resources/img/listing/list-1.jpg">
                                        <div class="listing__item__pic__btns">
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h4>연인과 함께</h4>
                                            <div class="listing__item__text__rating">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="optionsRadios"
                                                        id="optionsRadios1" value="option1">
                                                    2인이상
                                                </label>
            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="<%= contextPath %>/resources/img/listing/list-1.jpg">
                                        <div class="listing__item__pic__btns">
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h4>가족과 함께</h4>
                                            <div class="listing__item__text__rating">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="optionsRadios"
                                                        id="optionsRadios2" value="option2">
                                                    4인이상
                                                </label>
                                            </div>
            
                                        </div>
            
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="<%= contextPath %>/resources/img/listing/list-1.jpg">
                                        <div class="listing__item__pic__btns">
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h4>친구와 함께</h4>
                                            <div class="listing__item__text__rating">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="optionsRadios"
                                                        id="optionsRadios3" value="option3">
                                                    3인이상
                                                </label>
            
                                            </div>
            
                                        </div>
            
                                    </div>
                                </div>
                            </div>
            
            </form>



                <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <hr><br>
                            <h2>STEP 2</h2>
                            <p>아래에서 원하시는 날짜와 위치를 선택해주세요</p>
                        
                        </div>
                    </div>
                </div>

           
                    <div class="loca_1">
                        <!-- <div class="dropdown">
                            <h2>위치를 선택해주세요</h2>
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">클릭하셔서 위치를 선택해주세요</button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" type="submit">홍대</a>
                                <a class="dropdown-item" type="submit">신촌</a>
                                <a class="dropdown-item" type="submit">연남동</a>
                                <a class="dropdown-item" type="submit">연남동</a>
                                <a class="dropdown-item" type="submit">연남동</a>
                            </div>
                        </div> -->

                        <h2>위치를 선택해주세요</h2>
                        <select name="which" onchange="handleOnChange(this)">
                            <option value="연남동">연남동</option>
                            <option value="광화문">광화문</option>
                            <option value="홍대">홍대</option>
                            <option value="강남">강남</option>
                        </select>
                        <div id='result'></div>
                        
                        </div>
                        
                        
                        <div class="date_1" id='result'>
                            <h2>날짜를 선택해주세요</h2>
                        
                            <input type="text" name="date_choose" id="startDate">
                        
                            <button type="submit" class="btn btn-dark">확인</button>
                        
                        </div>
     </section>
                        
                        
                        <div>
                            <center>
                                <h4>확인을 누른후 다음으로 클릭하셔서 일정을 추천 받으세요!</h4>
                                <p> 인원에 따라 추가 금액이 발생 할 수 있습니다 </p>
                            </center>
                        
                        </div>
                        
                        <div class="total_btn">
                            <a href="<%= contextPath %>/index.jsp"><button type="button" class="btn btn-dark">메인으로</button></a>
                            <a href="<%= contextPath %>/views/plan/adminPlan_detail.jsp"><button type="button" class="btn btn-dark">다음으로</button></a>
                        </div>


   

   


    <%@ include file="../common/footer.jsp"%>

    
    <script src="<%= contextPath %>/resources/js/main.js"></script>
</body>




<!-- 자바스크립트 함수부분  -->
		
		<script>
		
		    // 위치 선택 출력 
		    function handleOnChange(e) {
		        // 선택된 데이터 가져오기
		        const value = e.value;
		
		        // 데이터 출력
		        document.getElementById('result').innerText
		            = value;
		    }
		</script>
		
		<script> // 달력 날짜 선택 
		    $(function () {
		        $('#startDate').datepicker({
		        
		        })
		      
		    })
		</script>
		
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

</html>