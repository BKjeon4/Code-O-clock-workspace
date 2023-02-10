
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>국비/부트캠프 상세페이지</title>
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
      <link rel="stylesheet" href="/assets/css/allcss.css">
      <link rel="stylesheet" href="/assets/css/onoff.css">
      <link rel="stylesheet" href="/assets/css/allcss.css">
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
                        <div class="header__category d-none d-lg-block">
                           <nav>
                              <ul>
                                 <li>
                                    <div class="cat-dot-icon d-inline-block">
                                       <input type="checkbox" id="switch" />
                                       <label class="onoff" for="switch">Toggle</label>
                                    </div>
                                 </li>
                              </ul>
                           </nav>
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
                                          <a href="course-grid">강의</a>
                                          <ul class="submenu">
                                             <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                             <li><a href="/academy/rank">학원 랭크</a></li>
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
                                          <a href="course-grid">강의</a>
                                          <ul class="submenu">
                                             <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                             <li><a href="/academy/rank">학원 랭크</a></li>
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
            <h4>찜/위시리스트</h4>
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
                  <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> 찜 목록 </a>
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
                  <a href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}" class="e-btn e-btn-border mb-10 w-100"> <span></span> 위시리스트 목록 </a>
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


         <div id="font">
         <!-- page title area start -->
         <section class="page__title-area pt-120 pb-90">
            <div class="page__title-shape">
               <img class="page-title-shape-5 d-none d-sm-block" src="/assets/img/page-title/page-title-shape-1.png" alt="">
               <img class="page-title-shape-6" src="/assets/img/page-title/page-title-shape-6.png" alt="">
               <img class="page-title-shape-7" src="/assets/img/page-title/page-title-shape-4.png" alt="">
            </div>
            <div class="container" id = details>
               <div class="row">
                  <div class="col-xxl-8 col-xl-8 col-lg-8">
                     <div class="course__wrapper">
                        <div class="page__title-content mb-25">
                           <div class="page__title-breadcrumb">                            
                               <nav aria-label="breadcrumb">
                                 <ol class="breadcrumb">
                                   <li class="breadcrumb-item"><a href="index">Home</a></li>
                                   <li class="breadcrumb-item"><a href="course-grid">Courses</a></li>
                                   <li class="breadcrumb-item active" aria-current="page">${education.edTitle}</li>
                                 </ol>
                               </nav>
                           </div>
                             <!-- 국비인지 부트인지-->
                           <span class="page__title-pre">국비 / 부트</span>
                             <!-- 교육과정 이름-->
                           <h6 class="page__title-3">${education.edTitle}</h6>
                        </div>
                        <div class="course__meta-2 d-sm-flex">
                           <div class="course__teacher-3 d-flex align-items-center mr-70 mb-20">
                              <div class="course__teacher-thumb-3 mr-15">
                                   <!--교육과정 사진-->
                                 <img src="/assets/img/course/${edPic}" >
                              </div>
                              <div class="course__teacher-info-3">
                                 <h5>학원이름</h5>
                                   <!--누르면 이 학원의 다른 내용들을 확인할 수 있음 -->
                                 <p><a href="/academy/course-sidebar?keywords=${education.edName}">${education.edName}</a></p>
                              </div>
                           </div>



                           <div class="course__update mr-80 mb-20">
                              <h5>교육과정 기간</h5>
                                <!--날짜의 값이 들어가도록 세팅 -->
                              <p>${education.edStartDate} ~ ${education.edEndDate} </p>
                           </div>

                           <div class="course__lesson" > <!--0106 좋아요버튼-->
                              <span> <a href="/mypage/wishInsert?memIdInt=${sessionScope.memIdInt}&edId=${education.edId}">
                                 <input type="image" style="width:30px;  margin-bottom: 10px; margin-right:10px"  class="icon.heart" src="/assets/img/course/on.png" alt="찜하기" id="likeImg">
                            </a></span>
                           </div>
                         

                           
                               <!--0105 찬주 별점1  평균 부분 나오는 작은부분-->
                           <div class="course__rating-2 mb-20">
                              <h5>별점:</h5>
                              <div class="course__rating-inner d-flex align-items-center">
                              <c:forEach var="avg" items="${avg}">  
                                 <c:if test="${avg[0] == education.edId}" >  
                                 <c:if test="${avg[1] == 1}">
                                    <img src="/assets/img/star/1s.png">
                              </c:if>
                              <c:if test="${avg[1]== 2}">
                                    <img src="/assets/img/star/2s.png">
                              </c:if>
                              <c:if test="${avg[1] == 3}">
                                    <img src="/assets/img/star/3s.png">
                              </c:if>
                              <c:if test="${avg[1] == 4}">
                                    <img src="/assets/img/star/4s.png">
                              </c:if>
                              <c:if test="${avg[1] == 5}">
                                    <img src="/assets/img/star/5s.png">
                              
                                
                              </c:if>
                              <p>${avg[1]}</p>
                              </c:if>
                              </c:forEach>
                              
                              </div>
                           </div>
                           
                        </div>
                      
                         <!--옆에 사이드바 추가 -->
   <div class="col-xxl-4 col-xl-4 col-lg-4">
      <div class="course__sidebar pl-70 p-relative"  id="side">
         <div class="course__shape">
            <img class="course-dot" src="assets/img/course/course-dot.png" alt="">
         </div>
         <div class="course__sidebar-widget-2 white-bg mb-20">
            <div class="course__video">
             
               <div class="course__video-meta mb-25 d-flex align-items-center justify-content-between">
                  <div class="course__video-price">
                     <h5>${education.edName}</h5>
                     <h5 class="old-price">수강비</h5>
                  </div>
                  <div class="course__video-discount">
                     <span>${education.edPrice}</span>
                  </div>
               </div>
               <div class="course__video-content mb-35">
                  <ul>
                     <li class="d-flex align-items-center">
                        <div class="course__video-icon">
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 16 16" style="enable-background:new 0 0 16 16;" xml:space="preserve">
                              <path class="st0" d="M2,6l6-4.7L14,6v7.3c0,0.7-0.6,1.3-1.3,1.3H3.3c-0.7,0-1.3-0.6-1.3-1.3V6z"/>
                              <polyline class="st0" points="6,14.7 6,8 10,8 10,14.7 "/>
                           </svg>
                        </div>
                        <div class="course__video-info">
                           <h5><span>위치 :</span>${education.edAddr}</h5>
                        </div>
                     </li>
                    
                     <li class="d-flex align-items-center">
                        <div class="course__video-icon">
                           <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 16 16" style="enable-background:new 0 0 16 16;" xml:space="preserve">
                              <circle class="st0" cx="8" cy="8" r="6.7"/>
                              <polyline class="st0" points="8,4 8,8 10.7,9.3 "/>
                           </svg>
                        </div>
                        <div class="course__video-info">
                           <h5><span>수업시간 :</span>${education.edTime}</h5>
                        </div>
                     </li>
                     <li class="d-flex align-items-center">
                        <div class="course__video-icon">
                           <svg>
                              <path class="st0" d="M13.3,14v-1.3c0-1.5-1.2-2.7-2.7-2.7H5.3c-1.5,0-2.7,1.2-2.7,2.7V14"/>
                              <circle class="st0" cx="8" cy="4.7" r="2.7"/>
                           </svg>
                        </div>
                        <div class="course__video-info">
                           <h5><span>접속정보 :</span>${sessionScope.memIdString}</h5>
                        </div>
                     </li>
                     <li class="d-flex align-items-center">
                        <div class="course__video-icon">
                           <svg>
                              <circle class="st0" cx="8" cy="8" r="6.7"/>
                              <line class="st0" x1="1.3" y1="8" x2="14.7" y2="8"/>
                              <path class="st0" d="M8,1.3c1.7,1.8,2.6,4.2,2.7,6.7c-0.1,2.5-1,4.8-2.7,6.7C6.3,12.8,5.4,10.5,5.3,8C5.4,5.5,6.3,3.2,8,1.3z"/>
                           </svg>
                        </div>
                        <div class="course__video-info">
                           <h5><span>Language :</span>Korea</h5>
                        </div>
                     </li>
                  </ul>
               </div>
               
               <div class="course__enroll-btn">
                  <!-- 누르면 이확원이 등록했던 걸 키워드 검색 파라미터로 넘겨 학원 정보를 더 확인할 수 있다-->
                  <a href="/academy/course-sidebar?keywords=${education.edName}" class="e-btn e-btn-7 w-100">이학원 더보기! <i class="far fa-arrow-right"></i></a>
               </div>
            </div>
         </div>





         <div class="course__sidebar-widget-2 white-bg mb-20">
            <div class="course__sidebar-course">
               <h3 class="course__sidebar-title">Recommend Education</h3>
               <ul>
                  <li>
                     <div class="course__sm d-flex align-items-center mb-30">

                        <div class="course__sm-thumb mr-20">
                           <a href="course-sidebar?keywords=${education.edName}">
                              <img src="/assets/img/course/${education.edPic}" alt=""> 
                           </a>
                        </div>

                        <div class="course__sm-content">
                         
                           <h5>${education.edName}</h5>
                           <div class="course__sm-price">
                              <span>이 학원이 더 궁금해?!</span>
                           </div>
                        </div>
                     </div>
                  </li>

                   <li>
                     <h3 class="course__sidebar-title">Event</h3>
                  </li>

                  <li>
                     <div class="course__sm-content">
                         
                      
                        <div class="course__sm-price">
                          
                           <h3>코클에서 쉽게확인하기!</h3>
                             
                          
                        </div>
                     </div>


                     <img src="/assets/img/event2.png" alt=""> 

                     
                  </li>
                  


                  
                 
               </ul>
            </div>
         </div>

      </div>
   </div>    



                        <!--해당 교육과정 이미지-->
                        <div class="course__img w-img mb-30">
                           <img src="/assets/img/course/${edPic}" alt="" width='770' height='450'>
                        </div>
                         <!--교육과정 관련 tab부분 -->
                        <div class="course__tab-2 mb-45">
                           <ul class="nav nav-tabs" id="courseTab" role="tablist">

                              
                              <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="description-tab" data-bs-toggle="tab" data-bs-target="#description" type="button" role="tab" aria-controls="description" aria-selected="true"> <i class="icon_ribbon_alt"></i> <span>상세설명</span> </button>
                              </li>
                              <li class="nav-item" role="presentation">
                                <button class="nav-link " id="curriculum-tab" data-bs-toggle="tab" data-bs-target="#curriculum" type="button" role="tab" aria-controls="curriculum" aria-selected="false"> <i class="icon_book_alt"></i> <span>교육과정</span> </button>
                              </li>
                              <li class="nav-item" role="presentation">
                                <button class="nav-link" id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button" role="tab" aria-controls="review" aria-selected="false"> <i class="icon_star_alt"></i> <span>후기</span> </button>
                              </li>
                              <li class="nav-item" role="presentation">
                                 <button class="nav-link" id="member-tab" data-bs-toggle="tab" data-bs-target="#member" type="button" role="tab" aria-controls="member" aria-selected="false"> <i class="fal fa-user"></i> <span>위치</span> </button>
                               </li>
                              
                              
                            </ul>
                        </div>




                        <!--안에 내용들 시작-->
                      <div class="course__tab-content mb-95">
                           <div class="tab-content" id="courseTabContent">

                                    <!--1번 소개-->
                                    <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                       <div class="course__description">
                                          <h3>${education.edTitle}</h3>
                                          <!--상세내용(크롤링해서 넣기)-->
                                          <p>${education.edIntro}</p>

                                          
                                          <div class="course__description-list mb-45">
                                             <h4>Code a clock을 즐기시는법!</h4>
                                             <ul>
                                                <li> <i class="icon_check"></i> 1) Code a clock만의 상세한 실시간 정보</li>
                                                <li> <i class="icon_check"></i> 2) 한눈에 볼수 있는 교육과정</li>
                                                <li> <i class="icon_check"></i> 3) 실시간 리뷰로 편하게 비교하세요</li>
                                             </ul>
                                          </div>
                                          <div class="course__description-list mb-45">
                                             <h4>Code a clock은 이런분들을 원해요!</h4>
                                                <ul>
                                                   <li> <i class="icon_check"></i> 1) 실무에서 배우지 못한부분을 더 배우고 싶으신분!<li>
                                                   <li> <i class="icon_check"></i> 2) 실시간으로 변화하는 코딩없무를 빠르게 캐치하고 싶으신분!</li>
                                                   <li> <i class="icon_check"></i> 3) 저렴한 가격으로 수업받고 싶으신분!</li>
                                                </ul>
                                             </div>
                     
                                       </div>
                                  </div><!--1번 내용 div 끝-->






                              <!--커리큘럼 부분-->
                                 <div class="tab-pane fade" id="curriculum" role="tabpanel" aria-labelledby="curriculum-tab">
                                    <div class="course__curriculum">

                                             <c:forEach items="${title}" var="i" step="3" varStatus="status" ><!--forEach-->
                                       <div class="accordion" id="course__accordion">
                                             <div class="accordion-item mb-50">
                                             <h2 class="accordion-header" id="week-01">
                                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                      data-bs-target="#${title[status.index-3]}-content" aria-expanded="true"
                                                      aria-controls="${title[status.index-3]}-content">
                                                      ${i}
                                                   </button>
                                             </h2>

                                             <div id="${title[status.index-3]}-content" class="accordion-collapse collapse show" aria-labelledby="${title[status.index-3]}" data-bs-parent="#course__accordion">
                                                <div class="accordion-body">
                                                   <div class="course__curriculum-content d-sm-flex justify-content-between align-items-center">
                                                      <div class="course__curriculum-info">
                                                      
                                                         <h3> <span>${title[status.index+1]}: </span> ${title[status.index+2]}</h3>
                                                      </div>
                                                   
                                                   </div>
                                                </div>
                                             </div>
                                             </div>
                                          </div>
                                          <div class="accordion" id="course__accordion-2">
                                          </div>
                                       </c:forEach>
                                       </div>
                                 </div><!--2번 커리큘럼 끝-->





                                    <!----------------------------------------------------------------------------------------------------------------->
                                        <!--0105 찬주 별점2  평균 부분 나오는 큰부분 -->
                                       <!--3번 리뷰 별점관련 전체 부분 시작-->
                                       <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                             <div class="course__review">
                                                         
                                                         <h3>평균 별점</h3>
                                                         <p>평균 별점으로 확실히 확인하세요!</p>

                                                      <!--2 - 1 부분-->
                                                      <div class="course__review-rating mb-50">
                                                         <div class="row g-0">
                                                               <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4">
                                                                  <div class="course__review-rating-info grey-bg text-center">
                                                                           <c:forEach var="avg" items="${avg}">  
                                                                              <c:if test="${avg[0] == education.edId}" >  
                                                                           <h5>${avg[1]}</h5>
                                                                           <c:if test="${avg[1] == 1}">
                                                                                 <img src="/assets/img/star/1s.png">
                                                                           </c:if>
                                                                           <c:if test="${avg[1]== 2}">
                                                                                 <img src="/assets/img/star/2s.png">
                                                                           </c:if>
                                                                           <c:if test="${avg[1] == 3}">
                                                                                 <img src="/assets/img/star/3s.png">
                                                                           </c:if>
                                                                           <c:if test="${avg[1] == 4}">
                                                                                 <img src="/assets/img/star/4s.png">
                                                                           </c:if>
                                                                           <c:if test="${avg[1] == 5}">
                                                                                 <img src="/assets/img/star/5s.png">
                                                                           </c:if>
                                                                        <p>${avg[1]} Ratings</p>
                                                                        </c:if>
                                                                           </c:forEach>
                                                                        </div>
                                                                     </div>
                                                                     
                                                                  
                                                                         <!-- 별점 큰부분 옆 이미지 대체-->
                                                                        <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-8">
                                                                              <img src="/assets/img/star/re.png "  height="252" width="440">
                                                                        </div>
                                                                        
                                                              
                                                         </div>
                                                      </div>


                                                      <!--2-2부분-->
                                                                     <!-- 0105 찬주 등록된 리뷰확인 -->
                                                         <div class="course__comment mb-75" id="reviewBox">
                                                            <h3>리뷰확인</h3>
                                                               <!--반복문으로 출력--> 
                                                                         <c:forEach var="reviewList" items="${reviewList}">  
                                                            <ul>
                                                               <li>
                                                                  <div class="course__comment-box " >
                                                                     <div class="course__comment-thumb float-start">
                                                                        
                                                                     </div>
                                                                     <div class="course__comment-content">

                                                                        <div class="course__comment-wrapper ml-70 fix">
                                                                              <div class="course__comment-info float-start">
                                                                                 <h4>${reviewList.memIdString}</h4>
                                                                              </div>
                                                                           
                                                                              <div class="course__comment-rating float-start float-sm-end">
                                                                                 <tr>
                                                                                    <td>${reviewList.star}
                                                                                       <c:if test="${reviewList.star ==1}">
                                                                                          <img src="/assets/img/star/1s.png">
                                                                                       </c:if>
                                                                                       <c:if test="${reviewList.star ==2}">
                                                                                          <img src="/assets/img/star/2s.png">
                                                                                       </c:if>
                                                                                       <c:if test="${reviewList.star ==3}">
                                                                                          <img src="/assets/img/star/3s.png">
                                                                                       </c:if>
                                                                                       <c:if test="${reviewList.star ==4}">
                                                                                          <img src="/assets/img/star/4s.png">
                                                                                       </c:if>
                                                                                       <c:if test="${reviewList.star ==5}">
                                                                                          <img src="/assets/img/star/5s.png">
                                                                                       </c:if>

                                                                                    </td>
                                                                                 </tr>
                                                                              </div>


                                                                        </div>

                                                                           <div class="course__comment-text ml-70">
                                                                              <p>${reviewList.reContent}</p>
                                                                           </div>
                                                                  </div>
                                                               </li>
                                                            </ul>
                                                                            </c:forEach>
                                                         </div>




                                                                <!--2-3부분-->
                                                                      <div class="col-xxl-12">
                                                                              <div class="basic-pagination wow fadeInUp mt-30" data-wow-delay=".2s">
                                                                                 <ul class="d-flex align-items-center"> 
                                                                                             <!-- 페이지 그룹 -->
                                                                                    <!-- 시작블럭을 반복시작 인덱스로 종료블럭을 반복종료 인덱스로 설정  -->
                                                                                    <c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
                                                                                       <!-- 현재페이지의 +1이 i랑 같은 경우 다음페이지로 이동하게 설정 -->
                                                                                       <!-- 현재페이지의 +1이 i랑 다른 경우 다음 페이지로 이동하게 설정-->
                                                                                       <c:choose>
                                                                                       <c:when test="${pageNumber+1 == i}">
                                                                                          <li>
                                                                                             <button class = "ajaxBtn" ><span id="a">${i}</span></button>
                                                                                          </li>
                                                                                       </c:when>
                                                                                       <c:otherwise>
                                                                                          <li>
                                                                                            <button class = "ajaxBtn"><span id="b">${i}</span></button> 
                                                                                          </li>
                                                                                       </c:otherwise>
                                                                                       </c:choose>
                                                                                       </c:forEach>
                                                                                       <!-- 맨마지막페이지 -->
                                                                                       <!-- last : 해당 페이지가 마지막 페이지인지 여부(true/false로 구분)-->
                                                                                       <!-- 해당페이지가 마지막인 경우에는 아무것도 설정안함-->
                                                                                       <!-- 해당 페이지가 마지막 페이지가 아닌경우-->
                                                                                       <!-- 마지막페이지로 이동 -->
                                                                                       <c:choose>     
                                                                                       <c:when test="${elist.last}"></c:when>
                                                                                       <c:otherwise>
                                                                                          <li class="next">
                                                                                             <a href="course-details?edId=${param.edId}&page=${totalPages}" class="link-btn">
                                                                                             Next
                                                                                             <i class="arrow_right"></i>
                                                                                             <i class="arrow_right"></i>
                                                                                             </a>
                                                                                          </li>
                                                                                       </c:otherwise>
                                                                                       </c:choose>
                                                                                    </ul>
                                                                           </div>
                                                                     </div>
                                                                  


                                                      <!--2-4부분-->
                                                   <!-- 0104 찬주 리뷰등록 -->
                                                   <div class="course__form">
                                                         <h4>리뷰작성</h4>
                                                         <div class="course__form-inner">

                                                            <!--form의 시작-->
                                                            <form action="" method="get" id ="cmtfrm" name="cmtfrm">

                                                               <div class="row">
                                                                  <div class="col-xxl-6">
                                                                     <div class="course__form-input">
                                                                        <!--아이디값 저장 지금은 그냥 임의의 값 넣어줌-->
                                                                        <!--참고로 re_id 는 시퀀스라 자동이고 날짜도 자동으로 들어가게 해놓음-->
                                                                        <input type="text" name="memIdString" value="${sessionScope.memIdString}"  id = memIdString readonly> <!-- "${sessionScope.memIdString}"-->
                                                                        <input type="hidden" name="memIdInt" value="${sessionScope.memIdInt}"  id = memIdInt>
                                                                        
                                                                     </div>
                                                                  </div>
                                                                  
                                                
                                                                  <!--별점 체크 부분-->
                                                                  <div class="col-xxl-12">
                                                                     <div class="course__form-input">
                                                                        <div class="course__form-rating">
                                                                           <span>별점 </span>
                                                                           <img id =image1 onmouseover=show(1) onclick=mark(1) onmouseout=noshow(1) src="/assets/img/star/0star.png">
                                                                           <img id =image2 onmouseover=show(2) onclick=mark(2) onmouseout=noshow(2) src="/assets/img/star/0star.png">
                                                                           <img id =image3 onmouseover=show(3) onclick=mark(3) onmouseout=noshow(3) src="/assets/img/star/0star.png">
                                                                           <img id =image4 onmouseover=show(4) onclick=mark(4) onmouseout=noshow(4) src="/assets/img/star/0star.png">
                                                                           <img id =image5 onmouseover=show(5) onclick=mark(5) onmouseout=noshow(5) src="/assets/img/star/0star.png">
                                                                           <span id=startext></span>
                                                                           <input type="hidden" name="star"  id="star" value="${param.star}"> <!--히든넘기기-->
                                                                           <input type="hidden" name="edId" id="edId" value="${param.edId}"> <!--히든넘기기--> <!--임의의값임 수정 완료-->
                                                                           
                                                                        </div>

                                                                     <!--작성글 들어가는 부분!-->
                                                                        <textarea placeholder="리뷰를작성" name="reContent"  id="text"></textarea>
                                                                     </div>
                                                                  </div>
                                                         

                                                               </div>


                                                                  <div class="row">
                                                                     <div class="col-xxl-12">
                                                                        <div class="course__form-btn mt-10 mb-55">
                                                                           <button type="button" class="e-btn" id="btn-e">글 등록</button>
                                                                        </div>
                                                                     </div>
                                                                  </div>
                                                      
                                                         </form>
                                                      </div>
                                                </div>
                                                   <!--0105 리뷰부분 종료 여기까지-->
        
                                       </div>
                                    </div>





                                    <!-- 4 번 지도 API부분-->
                                     <!--지도API부분-->      
                                 <div class="tab-pane fade" id="member" role="tabpanel" aria-labelledby="member-tab">
                                    <div class="course__member mb-45">
                                           <!-- ======= Contact Section ======= -->
                                                <section id="contact" class="contact">
                                                   <div class="container">
                                             
                                                         <div class="section-title">
                                                            <h2>Contact</h2>
                                                            
                                                         </div>

                                             
                                                               <div>
                                                                  <iframe style= "border:0; width: 100%; height: 270px;" src="https://maps.google.com/maps?q=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B8%88%EC%B2%9C%EA%B5%AC%20%EB%94%94%EC%A7%80%ED%84%B8%EB%A1%9C9%EA%B8%B8%2099%20%EC%8A%A4%ED%83%80%EB%B0%B8%EB%A6%AC&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                                                               </div>

                                             
                                                      <div class="row mt-5">
                                             
                                                         <div class="col-lg-4">
                                                           <div class="info">
                                                
                                                         
                                                                     <div class="email">
                                                                        <i class="fal fa-location"></i>
                                                                        <h4>Location:</h4>
                                                                        <p>서울 금천구 가산디지털2로 101 
                                                                        </p>
                                                                     </diV>
                                                            </div>
                                                   
                                                         </div>     
                                                
                                                            <div class="col-lg-4">
                                                               <div class="info">
                                                   
                                                            
                                                                  <div class="email">
                                                                     <i class="fal fa-envelope"></i>
                                                                           <h4>Email:</h4>
                                                                           <p>skquddnr9709@gmail.com</p>
                                                                  </div>
                                              
                                                               </div>
                        
                                                            </div>                 
                                                               
                                                   
                                                            
                                             
                                                            
                                                         
                                                                     <div class="col-lg-4">
                                                                        <div class="info">
                                                   
                                                            
                                                                        <div class="phone">
                                                                           <i class="fal fa-phone"></i>
                                                                           <h4>Call:</h4>
                                                                           <p>+82 10 6585 9709</p>
                                                                        </div>
                                                            
                                                                        </div>                     
                                                            
                                                                     </div>  
                                                      </div> <!--end of row mt-5-->

                                                </div>
                                 
                                             
                                          </section><!-- End Contact Section -->
                                    </div>
                              </div><!--4번종료-->  


                          </div>

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
      <script src="/assets/js/star.js"></script>
      <script src="/assets/js/reviewAjax.js"></script>
      <script type = "text/javascript">
         $(function() {
             $(".onoff").click( function() { 
                 // if( $("#switch").is_CHECKED) {
                        //alert("s");
                        setTimeout(() => {
                           window.location.href="/lecture/index";
                        }, 300);
                        
                 // }    
               });
            })
      </script>

   </body>
</html>