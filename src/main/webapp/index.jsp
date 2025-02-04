<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>컬리 - 마켓컬리/뷰티컬리</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/main.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.0.min.js"></script>
</head>

<body>
	<div class="headertop">
		<div class="bundle">
			<%
			Integer userResult = (Integer) session.getAttribute("userResult"); // 세션에서 userResult 가져오기
			String username = (String) session.getAttribute("username"); // 세션에서 사용자 이름 가져오기
			if (userResult != null && userResult == 1 && username != null) { // 로그인 성공 및 username이 존재할 경우
			%>
			<a href="#" class="join"><%=username%>님</a>
			<!-- 프로필 대신 사용자 이름 표시 -->
			<p>&#124;</p>
			<a href="logout.do" class="login">로그아웃</a>
			<%
			} else {
			%>
			<!-- userResult가 null이거나 0, -1인 경우 -->
			<a href="join.do" class="join">회원가입</a>
			<p>&#124;</p>
			<a href="login.do" class="login">로그인</a>
			<%
			}
			%>
			<p>&#124;</p>
			<a href="market_kurly_1pg.jsp" class="support">고객센터</a>
		</div>
	</div>
	<header>
		<div id="logo">
			<img src="img/logo.png" alt="logo">
		</div>
		<nav>
			<ul>
				<li><a href="index.jsp" class="active_1">마켓컬리</a></li>
				<li class="active_2">&#124;</li>
				<li><a href="beauty_kurly.jsp" class="active_3">뷰티컬리</a></li>
			</ul>
			<div class="search">
				<input type="text" class="search_bar" name="search" autofocus
					required placeholder="검색어를 입력해주세요">
				<button type="button" class="glass_button">
					<img src="img/glass_button.svg" alt="glass_button">
				</button>
			</div>
			<div class="icon">
				<a href="market_kurly_1pg.jsp"><img src="img/ping.svg"
					alt="ping" class="ping_icon"></a> <a href="market_kurly_1pg.jsp"><img
					src="img/black_like.svg" alt="black_like" class="black_like_icon"></a>
				<a href="market_kurly_1pg.jsp"><img src="img/mart.svg"
					alt="mart" class="mart_icon"></a>
			</div>
		</nav>
	</header>
	<div class="headerbottom">
		<div class="category">
			<img src="img/category_black.png" alt="category_icon"
				onmouseover="this.src='img/category_purple.png'"
				onmouseout="this.src='img/category_black.png'" class="category_icon">
			<div class="category_in">
				<ul class="category_menus">
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class='category_menu_box'></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
					<li class="category_menu"><a href="market_kurly_1pg.jsp">
							<div class="category_menu_box"></div>
					</a></li>
				</ul>
			</div>
		</div>
		<ul class="menu">
			<li><a href="market_kurly_1pg.jsp" class="menu_1">신상품</a></li>
			<li><a href="market_kurly_1pg.jsp" class="menu_2">베스트</a></li>
			<li><a href="market_kurly_1pg.jsp" class="menu_3">알뜰쇼핑</a></li>
			<li><a href="BoardServlet?command=board_list" class="menu_4">게시판</a></li>
		</ul>
		<div class="delivery">
			<div class="delivery_icon">
				<a href="market_kurly_1pg.jsp"><span>샛별·하루</span> 배송안내</a>
			</div>
		</div>
	</div>
	<div id="slider">
		<ul class="slidewrap">
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_1.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_2.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_3.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_4.png"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_5.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_6.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_7.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_8.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_9.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_10.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_11.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_12.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_13.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_14.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_15.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_16.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_17.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_18.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_19.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_20.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_21.jpg"
				alt="slide image"></li>
			<li><img
				src="img/market_kurly_img/market_slider/market_slider_22.png"
				alt="slide image"></li>
		</ul>
		<span class="prev">&lt;</span> <span class="next">&gt;</span>
	</div>
	<section>
		<div class="main_menu">
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
			<article>
				<a href="market_kurly_1pg.jsp" class="box"></a>
			</article>
		</div>
	</section>
	<footer>
		<div class="service_center">
			<div class="service_left">
				<p>고객행복센터</p>
				<strong>1644-1234 <span>월~토요일 오전 7시 - 오후 6시</span></strong>
				<div class="service_left_inquiry">
					<button type="button" class="service_button">카카오톡 문의</button>
					<div class="service_text">
						월~토요일 &#124; 오전 7시 - 오후 6시<br> 일/공휴일 &#124; 오전 7시 - 오후 1시
					</div>
				</div>
				<div class="service_left_inquiry">
					<button type="button" class="service_button">1:1 문의</button>
					<div class="service_text">
						365일 고객센터 운영시간에<br> 순차적으로 답변드리겠습니다.
					</div>
				</div>
				<div class="service_left_inquiry">
					<button type="button" class="service_button">대량주문 문의</button>
					<div class="service_text">
						월~금요일 &#124; 오전 9시 - 오후 6시<br> 점심시간 &#124; 낮 12시 - 오후 1시
					</div>
				</div>
			</div>
			<div class="service_right">
				<ul class="introduction">
					<li><a href="market_kurly_1pg.jsp">컬리소개</a></li>
					<li><a href="market_kurly_1pg.jsp">컬리소개영상</a></li>
					<li><a href="market_kurly_1pg.jsp">투자정보</a></li>
					<li><a href="market_kurly_1pg.jsp">인재채용</a></li>
					<li><a href="market_kurly_1pg.jsp">이용약관</a></li>
					<li><a href="market_kurly_1pg.jsp">개인정보처리방</a></li>
					<li><a href="market_kurly_1pg.jsp">이용안내</a></li>
				</ul>
				<div class="explanation">
					법인명 (상호) :주식회사 컬리 &#124; 사업자등록번호 : 123-12-12345 <a
						href="market_kurly_1pg.jsp">사업자정보 확인</a><br>통신판매업 : 제
					2024-경기북부-12345 호<br>주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) &#124;
					대표이사 : 아무개 <br> 채용문의 : <a href="market_kurly_1pg.jsp">recruit@kurlycorp.com</a><br>
					팩스 : 080-1234-1234
				</div>
				<ul class="icon_2">
					<li><a href="market_kurly_1pg.jsp"><img
							src="img/icon_instagram.webp" alt="icon_instagram"></a></li>
					<li><a href="market_kurly_1pg.jsp"><img
							src="img/icon_fb.webp" alt="icon_fb"></a></li>
					<li><a href="market_kurly_1pg.jsp"><img
							src="img/icon_blog.webp" alt="icon_blog"></a></li>
					<li><a href="market_kurly_1pg.jsp"><img
							src="img/icon_naverpost.webp" alt="icon_naverpost"></a></li>
					<li><a href="market_kurly_1pg.jsp"><img
							src="img/icon_youtube.webp" alt="icon_youtube"></a></li>
				</ul>
			</div>
		</div>
		<div class="citation">
			<div class="citation_in">
				<button class="citation_1">
					<img src="img/logo_isms.svg" alt="logo_isms">
					<p>
						[인증범위] 컬리 쇼핑몰 서비스 개발·운영<br>(심사받지 않은 물리적 인프라 제외)<br>[유효기간]
						2022.01.19 ~ 2025.01.18
					</p>
				</button>
				<button class="citation_2">
					<img src="img/logo_eprivacy_plus.png" alt="logo_eprivacy_plus"
						class="logo_eprivacy_plus">
					<p>
						개인정보보호 우수 웹사이트 ·<br>개인정보처리시스템 인증 (ePRIVACY PLUS)
					</p>
				</button>
				<button class="citation_3">
					<img src="img/logo_tosspayments.svg" alt="logo_tosspayments"
						class="logo_tosspayments">
					<p>
						토스페이먼츠 구매안전(에스크로)<br>서비스를 이용하실 수 있습니다.
					</p>
				</button>
				<button class="citation_4">
					<img src="img/logo_wooriBank.svg" alt="logo_wooriBank">
					<p>
						고객님이 현금으로 결제한 금액에 대해 우리은행과<br>채무지급보증 계약을 체결하여 안전거래를 보장하고<br>있습니다.
					</p>
				</button>
			</div>
		</div>
	</footer>
	<script src="js/common.js"></script>
</body>

</html>