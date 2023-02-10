<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>Educal – Online Learning and Education HTML5 Template </title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Place favicon.ico in the root directory -->
      <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png">
      <!-- CSS here -->
      <link rel="stylesheet" href="/assets/css/preloader.css">
      <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="/assets/css/meanmenu.css">
      <link rel="stylesheet" href="/assets/css/animate.min.css">
      <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="/assets/css/swiper-bundle.css">
      <link rel="stylesheet" href="/assets/css/backToTop.css">
      <link rel="stylesheet" href="/assets/css/jquery.fancybox.min.css">
      <link rel="stylesheet" href="/assets/css/fontAwesome5Pro.css">
      <link rel="stylesheet" href="/assets/css/elegantFont.css">
      <link rel="stylesheet" href="/assets/css/default.css">
      <link rel="stylesheet" href="/assets/css/style.css">
      <link rel="stylesheet" href="/assets/css/honest-review.css">
      <link rel="stylesheet" href="/assets/css/onoff.css">
   </head>
   <body>
      <!--[if lte IE 9]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
      <![endif]-->
      
      <!-- Add your site or application content here -->  

      <!-- pre loader area start -->
      <div id="loading">
         <div id="loading-center">
            <div id="loading-center-absolute">
               <div class="loading-content">
                  <img class="loading-logo-text" src="/assets/img/logo/logo-text-2.png" alt="">
                  <div class="loading-stroke">
                     <img class="loading-logo-icon" src="/assets/img/logo/logo-icon.png" alt="">
                  </div>
               </div>
            </div>
         </div>  
      </div>
      <!-- pre loader area end -->

      <!-- back to top start -->
      <div class="progress-wrap">
         <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
         </svg>
      </div>
      <!-- back to top end -->

      <!-- header area start -->
      <header>
         <div id="header-sticky" class="header__area header__transparent header__padding header__white">
            <div class="container-fluid">
               <div class="row align-items-center">

                  <!--로고와 사이트 전환 이미지-->
                  <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-2 col-sm-4 col-6">
                     <div class="header__left d-flex">
                        <div class="logo">
                           <a href="/startpage">
                              <img src="/assets/img/logo/logo.png" alt="logo">
                           </a>
                        </div>
                     </div>
                  </div>

                  <!-- JSTL if : 로그인, 로그아웃된 상태 구분-->
                  <c:choose>
                     <c:when test="${empty sessionScope.memIdInt}">

                        <div class="col-xxl-9 col-xl-9 col-lg-6 col-md-7 col-sm-6 col-6">
                           <div class="eader__center align-items-center d-flex justify-content-center">
                              <div class="main-menu main-menu-3">
                                 <nav id="mobile-menu">
                                    <ul>
                                       <li>
                                          <a href="/aboutus">AboutUs</a>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="course-grid">학원/강의</a>
                                          <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                                <li><a href="/lecture/tutor">튜터 목록</a></li>
                                                <li><a href="/lecture/lecture-sidebar">강의 목록</a></li>
                                          </ul>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="">게시판</a>
                                          <ul class="submenu">
                                             
                                             <li><a href="/board/codingBoard">코딩 게시판</a></li>
                                             <li><a href="/board/newsList">뉴스</a></li>
                                             <li><a href="/board/announcement">공지</a></li>
                                          </ul>
                                       </li>
                                       <li>
                                          <a href="https://app.slack.com/client/T04K98KG26R/C04MTTWJS81" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;">챗봇</a>
                                       </li>
                                    </ul>
                                 </nav>
                              </div>

                              <div class="header__search p-relative ml-50 d-none d-md-block">

                                 <!--맨위 검색부분임-->
                                 <form action= /academy/course-sidebar method="GET" role="search">
                                    <input type="text" name ="keywords" placeholder="Search...">
                                    <button type="submit"><i class="fad fa-search"></i></button>
                                 </form>
                                 <!-- <div class="header__cart">
                                    <a href="javascript:void(0);" class="cart-toggle-btn">
                                       <div class="header__cart-icon">
                                          <img src="/assets/img/heart.png" alt="heart">

                                       </div>
                                       <span class="cart-item">!</span>
                                    </a>
                                 </div> -->
                              </div>
                              <div class="header__btn ml-20 d-none d-sm-block">
                                 <a href="/sign-in" class="e-btn">로그인</a>
                              </div>
                              <div class="sidebar__menu d-xl-none">
                                 <div class="sidebar-toggle-btn ml-30" id="sidebar-toggle">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                    <span class="line"></span>
                                 </div>
                              </div>
                           </div>
                        </div>

                     </c:when>
                     <c:when test="${not empty sessionScope.memIdInt}">

                        <div class="col-xxl-9 col-xl-9 col-lg-6 col-md-7 col-sm-6 col-6">
                           <div class="header__center align-items-center d-flex justify-content-center">
                              <div class="main-menu main-menu-3">
                                 <nav id="mobile-menu">
                                    <ul>
                                       <li>
                                          <a href="/aboutus">AboutUs</a>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="course-grid">학원/강의</a>
                                          <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                                <li><a href="/lecture/tutor">튜터 목록</a></li>
                                                <li><a href="/lecture/lecture-sidebar">강의 목록</a></li>
                                          </ul>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="">게시판</a>
                                          <ul class="submenu">
                                             
                                             <li><a href="/board/codingBoard">코딩 게시판</a></li>
                                             <li><a href="/board/newsList">뉴스</a></li>
                                             <li><a href="/board/announcement">공지</a></li>
                                          </ul>
                                       </li>
                                       <li>
                                          <a href="https://app.slack.com/client/T04K98KG26R/C04MTTWJS81" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;">챗봇</a>
                                       </li>
                                    </ul>
                                 </nav>
                              </div>
                              <!-- 0103 찬주2
                              메인화면에서의 검색기능과 동일한 부분 
                           -->

                              <div class="header__search p-relative ml-50 d-none d-md-block">

                                 <form id="main" action=/academy/course-sidebar method="GET">
                                    <input type="text" name="keywords" placeholder="여기서 검색">
                                    <button type="submit"><i class="fad fa-search"></i></button>
                                 </form>
                                 <!-- 검색 끝-->




                                 <div class="header__cart">
                                    <a href="javascript:void(0);" class="cart-toggle-btn">
                                       <div class="header__cart-icon">
                                          <img src="/assets/img/heart.png" alt="heart"/ >
                                       </div>
                                       <span class="cart-item">!</span>
                                    </a>
                                 </div>
                              </div>
                              <div class="header__btn ml-20 d-none d-sm-block">
                                <!--  <div class="usercontainer">
                                    <div class="usernav">
                                      <h3>${sessionScope.memIdString}</h3>
                                      <div class="drop">
                                       <img class="user" src="/assets/img/user.png" alt="user"style="margin-right: 10px;"/>
                                        <span class="online"></span>
                                        <i class="fi-rr-angle-small-down"></i>
                                      </div>
                                    </div>
                              </div>  -->

                              <!--마이페이지-->
                              <div class="header__category d-none d-lg-block">
                                 <nav>
                                    <ul>
                                       <li>
                                          <!-- <a href="course-grid" class="cat-menu d-flex align-items-center"> -->
                                            
                                             <!-- <span>${sessionScope.memIdString}</span> -->
                                             <div class="drop">
                                                <img class="user" src="/assets/img/user.png" alt="user"style="margin-right: 10px;"/>
                                                 <span class="online"></span>
                                                 <i class="fi-rr-angle-small-down"></i>
                                               </div>

                                          <!-- </a> -->
                                          <ul class="cat-submenu">
                                             <li><h4 style="margin-left: 10px;">${sessionScope.memIdString}님</h4></li>
                                             <li class="sy" style="margin-left: 10px">${sessionScope.memEmail}</li>
                                             <hr>
                                             <li><a href="/mypage/modify">마이페이지</a></li>
                                             <li><a href="/mypage/myreview">작성글 관리</a></li>
                                             <li><a href="/mypage/lessonreserve">예약 현황</a></li>
                                             <li><a href="/logoutMember">로그아웃</a></li>
                                          </ul>
                                       </li>
                                    </ul>
                                 </nav>
                              </div>





                              
                              

                              <div class="sidebar__menu d-xl-none">
                                 <div class="sidebar-toggle-btn ml-30" id="sidebar-toggle">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                    <span class="line"></span>
                                 </div>
                              </div>
                           </div>
                        </div>

                     </c:when>
                  </c:choose>
                  <!-- JSTL c:when 끝-->

               </div>
            </div>
         </div>
      </header>
      <!-- header area end -->

   <!-- cart mini area start -->
   <div class="cartmini__area">
      <div class="cartmini__wrapper">
         <div class="cartmini__title">
            <h4>Shopping cart</h4>
         </div>
         <div class="cartmini__close">
            <button type="button" class="cartmini__close-btn"><i class="fal fa-times"></i></button>
         </div>
         <div class="cartmini__widget ">
            <div class="cartmini__inner" style="overflow-x:hidden;">
               <ul>
                  <c:forEach items="${jjimList}" var="wish">
                  <li>
                     <div class="cartmini__thumb">
                        <a href="#">
                           <img src="/assets/img/lecture/${wish[3]}" alt="">
                        </a>
                     </div>
                     <div class="cartmini__content">
                        <h5><a href="#">${wish[0]} </a></h5>
                        <div class="product-quantity mt-10 mb-10">
                        </div>
                        <div class="product__sm-price-wrapper">
                           <span class="product__sm-price">${wish[3]}</span>
                        </div>
                     </div>
                     <a href="/mypage/deleteJjim?memIdInt=${wish[2]}&jjId=${wish[1]}" class="cartmini__del"><i class="fal fa-times"></i></a>
                  </li>
                  </c:forEach>
               </ul>
            </div>
            <div class="cartmini__checkout">
  
               <div class="cartmini__checkout-btn">
                  <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
               </div>
            </div>
            <div class="cartmini__inner ">
               <ul>
                  <c:forEach items="${wishList}" var="wish">
                  <li>
                     <div class="cartmini__thumb">
                        <a href="#">
                           <img src="/assets/img/course/${wish[4]}" alt="">
                        </a>
                     </div>
                     <div class="cartmini__content">
                        <h5><a href="#">${wish[0]} </a></h5>
                        <div class="product-quantity mt-10 mb-10">
                        </div>
                        <div class="product__sm-price-wrapper">
                           <span class="product__sm-price">${wish[3]}</span>
                        </div>
                     </div>
                     <a href="/mypage/deleteWish?memIdInt=${wish[2]}&wId=${wish[1]}" class="cartmini__del"><i class="fal fa-times"></i></a>
                  </li>
                  </c:forEach>
               </ul>
            </div>
            <div class="cartmini__checkout">
  
               <div class="cartmini__checkout-btn">
                  <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="body-overlay"></div>
   <!-- cart mini area end -->


      <!-- sidebar area start -->
      <div class="sidebar__area">
         <div class="sidebar__wrapper">
            <div class="sidebar__close">
               <button class="sidebar__close-btn" id="sidebar__close-btn">
               <span><i class="fal fa-times"></i></span>
               <span>close</span>
               </button>
            </div>
            <div class="sidebar__content">
               <div class="logo mb-40">
                  <a href="index">
                  <img src="/assets/img/logo/logo.png" alt="logo">
                  </a>
               </div>
               <div class="mobile-menu fix"></div>

               <div class="sidebar__search p-relative mt-40 ">
                  <form action="#">
                     <input type="text" placeholder="Search...">
                     <button type="submit"><i class="fad fa-search"></i></button>
                  </form>
               </div>
               <div class="sidebar__cart mt-30">
                  <a href="#">
                     <div class="header__cart-icon">
                        <svg viewBox="0 0 24 24">
                           <circle class="st0" cx="9" cy="21" r="1"/>
                           <circle class="st0" cx="20" cy="21" r="1"/>
                           <path class="st0" d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6"/>
                        </svg>
                     </div>
                     <span class="cart-item">!</span>
                  </a>
               </div>
            </div>
         </div>
      </div>
      <!-- sidebar area end -->      
      <div class="body-overlay"></div>
      <!-- sidebar area end -->

      <main>

         
         <!-- 솔직 질문/답변 시작 -->
         <div class="container header-padding-top">
            <div class="ant-space ant-space-vertical ant-gap">

               <!-- 질문 시작 -->
               <div class="honestChat-line">
                  <div class="honestChat-question">

                     <!-- 질문자 사진 -->
                     <div class="honestChat-block">

                        <!-- 프로필 사진 -->
                        <div class="honestChat-profile-pic">
                           <img class="honestChat-profile-size" src="/assets/img/profile-pic/dogShiny.png">
                        </div>

                        <!-- 아이디 출력 -->
                        <div class="honestChat-profile-ID">
                           <span class="honestChat-ID">참참참1234</span>
                        </div>

                     </div>

                     <!-- 질문 채팅 내용 -->
                     <div class="honestChat-block">

                        <!-- 채팅 내용 -->
                        <div class="honestChat-container">
                           <div class="honestChat-comment-right">
                              <div class="ant-space ant-space-vertical ant-gap">
                                 <div class="honestChat-line">
                                    <h5 class="ant-typography">
                                       <b>부트텐트는 뭔가요? 부트캠프의 일종인가요?</b>
                                    </h5>
                                 </div>
                                 <div class="honestChat-line">
                                    <p>부트텐트를 처음 접합니다. <br>
                                       이 사이트는 무엇을 위한 사이트인지 궁금합니다.<br>
                                    </p>
                                 </div>
                              </div>
                           </div>
                        </div>

                        <!-- 작성날짜 -->
                        <div class="honestChat-container-date">
                           <span class="honestChat-date">2023-01-05 16:34:22</span>
                        </div>

                     </div>

                  </div>
               </div>

               <!-- 솔직 답변 시작 -->
               <div class="honestChat-lines">
                  <div class="honestChat-answers">
                     <div class="ant-space ant-space-vertical ant-gap">
                        
                        <!-- 답변 -->
                        <div class="honestChat-line">
                           <div class="honestChat-answer">

                              <!-- 답변자 사진 -->
                              <div class="honestChat-block">

                                 <!-- 프로필 사진 -->
                                 <div class="honestChat-profile-pic">
                                    <img class="honestChat-profile-size" src="/assets/img/profile-pic/001.png">
                                 </div>

                                 <!-- 아이디 출력 -->
                                 <div class="honestChat-profile-ID">
                                    <span class="honestChat-ID">ㅛ어ㅏㅌㅊㅍㅌㅇㄴ</span>
                                 </div>

                              </div>
                              
                              <!-- 답변자 채팅 내용 -->
                              <div class="honestChat-block">

                                 <!-- 채팅 내용 -->
                                 <div class="honestChat-container">
                                    <div class="honestChat-comment-left">
                                       <div class="ant-space ant-space-vertical ant-gap">
                                          <div class="honestChat-line">
                                             <strong>현) it교육 기획자, 전) 부캠 운영 경험</strong>
                                          </div>
                                          <div class="honestChat-line">
                                             <p>부트텐트는 코딩부트캠프나 개발자 취업을 고민하는 분들이 정보를 편하게 볼 수 있도록 만든
                                                서비스입니다. <br>
                                                유튜브를 운영하며 많은 분들이 개발자로의 전직이나 취업을 고민하고 있다는 것을 알게 되었고, <br>
                                                조금이라도 도움을 드리기 위해 부트텐트를 만들었습니다.<br></p>
                                             <p>저는 코딩부트캠프를 통해 취업을 하지는 않았지만, 대기업 개발자 경험이 있으며 <br>
                                                퇴사 후 여러 강의, 국비교육, 부트캠프 등을 들어봤습니다. <br>
                                                또한 많은 지인들이 네카라쿠배당토 등의 현업 개발자이고, 강의를 하거나 책 저자인 분들도 계십니다. <br>
                                                궁금하신 부분은 우측하단 채널톡을 이용하시면 아는 한도에서 말씀드리겠습니다.</p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                                 <!-- 작성날짜 -->
                                 <div class="honestChat-container-date-right">
                                    <span class="honestChat-date">2023-01-06 14:00:00</span>
                                 </div>

                              </div>
                              
                           </div>
                        </div>

                        <!-- 답변 -->
                        <div class="honestChat-line">
                           <div class="honestChat-answer">
                              <!-- 프로필 사진 -->
                              <div class="honestChat-profile-pic">
                                 <img class="honestChat-profile-size" src="/assets/img/profile-pic/002.png">
                              </div>
                              <div class="honestChat-container">
                                 <div class="honestChat-comment-left">
                                    <div class="ant-space ant-space-vertical ant-gap">
                                       <div class="honestChat-line">
                                          <strong>현) it교육 기획자, 전) 부캠 운영 경험</strong>
                                       </div>
                                       <div class="honestChat-line">
                                          <p>개발자가 되고 싶은 분들은 점점 많아지고 있습니다. 하지만, ‘어떻게 개발자가 될 수 있을까?’를 궁금해 하시는 분들에게
                                             제공돼야 하는 좋은 정보들은 아직도 접근성이 많이 떨어집니다. 검색을 해봐도 복잡하고 어려운 용어들로 설명된 이해하기 힘든
                                             글들이 대부분이고, 업체에서 뿌린 광고성 콘텐츠들 때문에 어떤 정보를 믿어야 할지도 잘 모르겠습니다.</p>
                                          <p>더 이상 좋은 정보의 부족으로 피해보시는 분들이 없도록, 개발 교육과 개발자 커리어에 대한 진정성 있는 정보를 제공해주는
                                             서비스가 필요하다고 생각했습니다. 그래서, 부트텐트와 함께 하며 개발자 커리어를 이제 막 준비하는 분들에게 필요한 정보를
                                             제공해드리는 중입니다.</p>
                                          <p>저는 한 업체에서 데이터 사이언스와 프론트엔드 취업교육 과정을 기획하고 운영하는 업무를 했었습니다. 현재는 소속을 옮겨서
                                             프로그래밍 학습을 위한 온라인 교육 콘텐츠를 제작하고, 학습을 진행하는 온라인 서비스를 개선 및 운영하는 업무를 하는
                                             중입니다.</p>
                                          <p>개발 교육 업계에서 근무하고, 또 교육과정을 직접 운영해본 경험을 바탕으로 부트캠프와 개발자 취업 준비 과정에 숨겨진 썰들을
                                             다양하게 풀어보겠습니다! 궁금한 점 있으신 분들은 우측 하단에 카카오채널로 문의 남겨 주세요 제가 아는 한에서 성심껏 답변
                                             드려보겠습니다 :)</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
               <!-- 솔직 답변 끝 -->

            </div>
         </div>
         <!-- 솔직 질문/답변 끝 -->

         <!-- 새로운 답변 작성 -->
         <div class="container padding-top ant-gap">
            <form action="insertHR" method="post">
               <div class="row">
                  <div class="col-xs-8 col-sm-8 col-md-7 col-lg-7 col-xl-6 col-xxl-6">
                     <div class="course__form-input">
                        <input type="text" placeholder="Review Title">
                     </div>
                  </div>
                  <div class="col-xxl-12">
                     <div class="course__form-input">
                        <textarea placeholder="여기에 답변을 입력해주세요."></textarea>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xxl-12">
                     <div class="course__form-btn mt-10 mb-55 honestChat-answer-btn">
                        <button type="submit" class="e-btn honestChat-answer-btn">답변하기</button>
                     </div>
                  </div>
               </div>
            </form>
         </div>

      </main>

         <!-- footer area start -->
         <footer>
            <div class="footer__area grey-bg-2">
               <div class="footer__top pt-20 pb-0">
                  <div class="container">
                     <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-6">
                           <div class="footer__widget mb-50">
                              <div class="footer__widget-head mb-22">
                                 <img src="/assets/img/logo/logo.png" alt="">
                              </div>
                              <div class="footer__widget-body footer__widget-body-2">
                                 

                                 
                              </div>
                           </div>
                        </div>
                        <div
                           class="col-xxl-2 offset-xxl-1 col-xl-2 offset-xl-1 col-lg-3 offset-lg-0 col-md-2 offset-md-1 col-sm-5 offset-sm-1">
                           <div class="footer__widget mb-50">
                              <div class="footer__widget-head mb-22">
                                 
                              </div>
                              <div class="footer__widget-body">
                                 <div class="footer__link footer__link-2">
                                    <div class="footer__logo">
                                       <a href="index">

                                       </a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-xxl-2 col-xl-2 col-lg-2 offset-lg-0 col-md-3 offset-md-1 col-sm-6">
                           <div class="footer__widget mb-50">
                              <div class="footer__widget-head mb-22">
                                 
                              </div>
                              <div class="footer__widget-body">
                                 <div class="footer__link footer__link-2">
                                    
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-5 col-sm-6">
                           <div class="footer__widget footer__pl-70 mb-50">
                              <div class="footer__widget-head mb-22">
                                 
                              </div>
                              <div class="footer__widget-body">
                                 <div class="footer__subscribe footer__subscribe-2">
                                    <form action="#">
                                       <div class="footer__subscribe-input mb-15">
                                          
                                          <div class="footer__social" style="margin-left: 100px;">
                                             <ul>
                                                <li><a href="#"><i class="social_facebook"></i></a></li>
                                                <li><a href="#" class="tw"><i class="social_twitter"></i></a></li>
                                                <li><a href="#" class="pin"><i class="social_pinterest"></i></a></li>
                                             </ul>
                                          </div>
                                          
                                       </div>
                                       
                                    </form>
                                    
                                    
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="footer__bottom footer__bottom-2">
                  <div class="container">
                     <div class="row">
                        <div class="col-xxl-12">
                           <div class="footer__copyright footer__copyright-2 text-center">
                              <p>Shout out to Soyun Kim <a href="">By BK jeon</a></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
         <!-- footer area end -->
      <!-- JS here -->
      <script src="/assets/js/vendor/jquery-3.5.1.min.js"></script>
      <script src="/assets/js/vendor/waypoints.min.js"></script>
      <script src="/assets/js/bootstrap.bundle.min.js"></script>
      <script src="/assets/js/jquery.meanmenu.js"></script>
      <script src="/assets/js/swiper-bundle.min.js"></script>
      <script src="/assets/js/owl.carousel.min.js"></script>
      <script src="/assets/js/jquery.fancybox.min.js"></script>
      <script src="/assets/js/isotope.pkgd.min.js"></script>
      <script src="/assets/js/parallax.min.js"></script>
      <script src="/assets/js/backToTop.js"></script>
      <script src="/assets/js/jquery.counterup.min.js"></script>
      <script src="/assets/js/ajax-form.js"></script>
      <script src="/assets/js/wow.min.js"></script>
      <script src="/assets/js/imagesloaded.pkgd.min.js"></script>
      <script src="/assets/js/main.js"></script>
   </body>
</html>

