<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="zxx">
   <head>
      
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <title>국비/부트캠프 교육과정 목록 페이지 </title>
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
      <link rel="stylesheet" href="/assets/css/wishlist.css"><!-- 0106 좋아요 버튼 관련 css -->
      <link rel="stylesheet" href="/assets/css/onoff.css">
      <link rel="stylesheet" href="/assets/css/allcss.css">
      <style>
         @import url('https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300&display=swap');
         </style>
      
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

          <!-- page title area start(학원리스트 시작부분) -->
         <section class="page__title-area page__title-height page__title-overlay d-flex align-items-center" data-background="/assets/img/page-title/page-title.gif">
            <div class="container">
               <div class="row">
                  <div class="col-xxl-12">
                     <div class="page__title-wrapper mt-110">
                        <h3 class="page__title">국비&부트캠프 리스트</h3>                          
                        <nav aria-label="breadcrumb">
                           <ol class="breadcrumb">
                              <li class="breadcrumb-item"><a href="index">Home</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Courses</li>
                           </ol>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- page title area end -->

         <!-- course area start(학원리스트 내용 시작) -->
         <section class="course__area pt-120 pb-120">
            <div class="container">
               <div class="row">
                  <div class="col-xxl-8 col-xl-8 col-lg-8">
                     <div class="course__tab-inner grey-bg-2 mb-50 d-sm-flex justify-content-between align-items-center">
                        <div class="course__tab-wrapper d-flex align-items-center">
                           <div class="course__tab-btn">
                              <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                 <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="grid-tab" data-bs-toggle="tab" data-bs-target="#grid" type="button" role="tab" aria-controls="grid" aria-selected="true">
                                    <svg class="grid" viewBox="0 0 24 24">
                                       <rect x="3" y="3" class="st0" width="7" height="7"/>
                                       <rect x="14" y="3" class="st0" width="7" height="7"/>
                                       <rect x="14" y="14" class="st0" width="7" height="7"/>
                                       <rect x="3" y="14" class="st0" width="7" height="7"/>
                                       </svg>
                                    </button>
                                 </li>
                                 <li class="nav-item" role="presentation">
                                    <button class="nav-link list" id="list-tab" data-bs-toggle="tab" data-bs-target="#list" type="button" role="tab" aria-controls="list" aria-selected="false">
                                    <svg class="list" viewBox="0 0 512 512">
                                       <g>
                                          <path class="st0" d="M448,69H192c-17.7,0-32,13.9-32,31s14.3,31,32,31h256c17.7,0,32-13.9,32-31S465.7,69,448,69z"/>
                                          <circle class="st0" cx="64" cy="100" r="31"/>
                                          <path class="st0" d="M448,225H192c-17.7,0-32,13.9-32,31s14.3,31,32,31h256c17.7,0,32-13.9,32-31S465.7,225,448,225z"/>
                                          <circle class="st0" cx="64" cy="256" r="31"/>
                                          <path class="st0" d="M448,381H192c-17.7,0-32,13.9-32,31s14.3,31,32,31h256c17.7,0,32-13.9,32-31S465.7,381,448,381z"/>
                                          <circle class="st0" cx="64" cy="412" r="31"/>
                                       </g>
                                       </svg>
                                    </button>
                                 </li>
                              </ul>
                           </div>
                           <div class="course__view">
                              <!-- 0106 이부분은 나중에 값넣어서 보이게 하기 -->
                             <h4>Showing ${startBlockPage} - ${endBlockPage} of ${getTotalElements}</h4>
                          </div>
                       </div>




                        <!--0104 찬주 ~순 최신등록순으로 정렬 까지만 했음  -->
                        <div class="course__sort d-flex justify-content-sm-end">
                           <div class="course__sort-inner">

                           <form id="selectForm" action=/academy/course-sidebar method="GET">
                              <select name="order">
                                 <option >-- 선택 --</option>
                                 <option value="new">최신등록순</option>
                                 <option value="star">별점높은순</option>
                              </select>
                           </form>

                           </div>
                        </div>
                        <!-- 종료 부분-->

                        



                     </div>
                     <div class="course__tab-conent">
                        <div class="tab-content" id="courseTabContent">
                           <div class="tab-pane fade show active" id="grid" role="tabpanel" aria-labelledby="grid-tab">
                              <div class="row">


                               <!--화면 상세리스트 값들 나오는 부분 -->
                                 <c:forEach items="${academyList}" var="education">
                                    <input type="hidden" value="${education.edDays}" name="edDays">
                                 <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="course__thumb w-img p-relative fix">
                                          <a href="course-details?edId=${education.edId}">
                                         
                                             <!--해당 교육과정 관련 이미지 저장 경로 지정-->
                                             <img src="/assets/img/course/${education.edPic}" alt="" width='370' height='260' >
                                          </a>
                                          <div class="course__tag">
                                             <!-- 국비/ 부트캠프 인지-->
                                             <a href="course-details?edId=${education.edId}">국비 or 부트캠프</a>
                                          </div>
                                       </div>
                                       <div class="course__content">
                                          <div class="course__meta d-flex align-items-center justify-content-between">
                                             <div class="course__lesson"> <!--0106 좋아요버튼-->
                                                <span><a href="javascript:;"  class="icon heart">
                                                   <img id="likeBtn" src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
                                                </a><input type="hidden" id="like_check" value="1"></span>
                                             </div>


                                             
                                                       <!-- 별점출력 부분 값 지정해주기-->
                                            <c:forEach items="${avg}" var="avg">
                                             <c:if test="${avg[0] == education.edId}" >
                                                <div class="course__rating">
                                                   <span><i class="icon_star"></i>${avg[1]}</span>
                                                 </div>
                                             </c:if>
                                          </c:forEach>
                                            
                                         

                                       </div>
                                          <h3 class="course__title"><a href="course-details?edId=${education.edId}">${education.edTitle}</a></h3>
                                          <div class="course__teacher d-flex align-items-center">
                                             <div class="course__teacher-thumb mr-15">
                                                <img src="/assets/img/course/charity.png" alt="">
                                             </div>
                                             <h6><a href="#">${education.edName}</a></h6>
                                          </div>
                                          <div class="course__tag-2 mt-15">
                                             <!--0106 여기에 해당하는 키워드(값들 꺼내서)들 넣기-->
                                           <span><i class="fal fa-tag"></i>
                                            ${education.edKeyword}</span>
                                         </div>
                                       </div>
                                       <div class="course__more d-flex justify-content-between align-items-center">
                                          <div class="course__status">
                                             <span>${education.edPrice}</span>
                                          </div>
                                          <div class="course__btn">
                                             <a href="course-details?edId=${education.edId}" class="link-btn">
                                                Know Details
                                                <i class="far fa-arrow-right"></i>
                                                <i class="far fa-arrow-right"></i>
                                             </a>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </c:forEach>
                           
                              </div>
                           </div>
                           <div class="tab-pane fade" id="list" role="tabpanel" aria-labelledby="list-tab">
                              <div class="row">
                                 <c:forEach items="${academyList}" var="education">
                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details?edId=${education.edId}">
                                                   <!--해당 교육과정 관련 이미지 저장 경로 지정-->
                                                   <img src="/assets/img/course/${education.edPic}" alt="" width='370' height='220' />
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#">국비인지 부트인지</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><a href="javascript:;"  class="icon heart">
                                                            <img id="likeBtn" src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
                                                         </a><input type="hidden" id="like_check" value="1"></span>
                                                      </div>

                                          <!-- 별점출력 부분 값 지정해주기-->
                                                 <c:forEach items="${avg}" var="avg">
                                                      <c:if test="${avg[0] == education.edId}" >
                                                         <div class="course__rating">
                                                            <span><i class="icon_star"></i>${avg[1]}</span>
                                                         </div>
                                                      </c:if>
                                                </c:forEach>

                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details?edId=${education.edId}">${education.edTitle}</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/charity.png" alt="">
                                                      </div>
                                                      <h6><a href="#">${education.edName}</a></h6>
                                                   </div>
                                                   <div class="course__tag-2 mt">
                                                      <!--여기에 해당하는 키워드(값들 꺼내서)들 넣기-->
                                                    <span><i class="fal fa-tag"></i>
                                                     ${education.edKeyword}</span>
                                                  </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status">
                                                      <span>${education.edPrice}</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details?edId=${education.edId}" class="link-btn">
                                                         상세보기
                                                         <i class="far fa-arrow-right"></i>
                                                         <i class="far fa-arrow-right"></i>
                                                      </a>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>                                                          
                              </c:forEach>                                                         
                              </div>
                           </div>
                         </div>


                             <!-- 페이징 영역 시작  경호형꺼 받음 0104-->
                         
                         <div class="row">
                           <div class="col-xxl-12">
                              <div class="basic-pagination wow fadeInUp mt-30" data-wow-delay=".2s">
                                 <ul class="d-flex align-items-center"> 
                                    <!-- first : 해당 페이지가 첫번째 페이지인지 여부(true/false로 구분)-->
                                    <!-- 해당페이지가 첫번째인 경우에는 아무것도 설정안함-->
                                    <!-- 해당 페이지가 첫번째 페이지가 아닌경우-->
                                    <!-- 맨처음페이지로 이동 -->
                                    <c:choose>
                                    <c:when test="${elist.first}"></c:when>
                                    
                                    <c:otherwise>
                                    <li class="prev">
                                       <a href="course-sidebar?page=1" class="link-btn link-prev">
                                          Prev
                                          <i class="arrow_left"></i>
                                          <i class="arrow_left"></i>
                                       </a>
                                    </li>
                                 </c:otherwise>
                              </c:choose>

                           <!-- 페이지 그룹 -->
                           <!-- 시작블럭을 반복시작 인덱스로 종료블럭을 반복종료 인덱스로 설정  -->
                           <c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
                           <!-- 현재페이지의 +1이 i랑 같은 경우 다음페이지로 이동하게 설정 -->
                           <!-- 현재페이지의 +1이 i랑 다른 경우 다음 페이지로 이동하게 설정-->
                           <c:choose>
                           <c:when test="${pageNumber+1 == i}">
                              <li>
                                 <a href="course-sidebar?page=${i}&order=${param.order}&keywords=${param.keywords}"><span>${i}</span></a>
                              </li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="course-sidebar?page=${i}&order=${param.order}&keywords=${param.keywords}"><span>${i}</span></a></li>
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
                                 <li class="nxt-btn"><a href="course-sidebar?page=${pageNumber+2}&order=${param.order}&keywords=${param.keywords}">&rarr;</a></li>
                              <li class="next">
                                 <a href="course-sidebar?page=${totalPages}" class="link-btn">
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
                        </div>
                     </div>
                  </div>



                         









                  <div class="col-xxl-4 col-xl-4 col-lg-4">
                     <div class="course__sidebar pl-70">
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-info">
                              <h3 class="course__sidebar-title">국비/부트 Keywords</h3>



                              <!-- 찬주3
                                  0103 카테고리별 검색 form태그-->
                                  <form id="detailsForm" action=/academy/course-sidebar method="GET">
                                    <h5><인기 과목></h5> 
                              <ul>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                             id="m-all" name ="keywords" value="JAVA"  onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">JAVA / 자바</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                          id="m-all" name ="keywords" value="Python"  onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">Python / 파이썬</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                          id="m-all" name ="keywords"  value="JavaScript" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">JavaScript / 자바스크립트</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                     
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                      <h5><추가 과목></h5> 
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="HTML" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">HTML</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                          id="m-all" name ="keywords" value="CSS" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">CSS</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="JSP" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">JSP</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="SQL"  onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">SQL</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                          id="m-all" name ="keywords" value="Spring" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">Spring</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                        id="m-all" name ="keywords" value="머신러닝" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">머신러닝</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" 
                                          id="m-all" name ="keywords" value="딥러닝" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">딥러닝</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                     
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                      <h5><요즘 추세></h5> 
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="MVP" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">MVP</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="UI" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">UI</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="React " onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">React </label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="Node" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">Node</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="자연어처리" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">자연어처리</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="데이터 분석" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">데이터 분석</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="그로프로세스" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">그로프로세스</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="아이데이션" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">아이데이션</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="알고리즘" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">알고리즘</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords" value="시각화" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">시각화</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox"
                                           id="m-all" name ="keywords"  value="기초통계" onclick='checkOnlyOne(this)'>
                                       <label class="m-check-label" for="m-eng">기초통계</label>
                                    </div>
                                 </li>
                              </ul>
                          
                           </div>
                        </div>
                        <!--카테고리 선택후 전송버튼-->
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-course">
                              <h5 class="course__sidebar-title">키워드별 검색</h5>
                              <button >
                                 <input type="submit"  id = "sBtn" class="e-btn" value="검색" onclick='sub(this)'>
                                </button>  
                           </div>
                        </div>
                     </form>
                      </div>
                     </div>
                  </div>
                  <!-- 여기 위까지-->
               </div>
            </div>
         </section>
         <!-- course area end -->

         

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
      <script src="/assets/js/search.js"></script><!--0103 카테고리 검색용 추가 찬주-->
      <script src="/assets/js/jquerySelectBox.js"></script><!--0104 ~순 추가 제이쿼리-->
      <script src="/assets/js/wishList.js"></script><!--0106 좋아요 버튼 관련 ajax-->
      <script src="/assets/js/jquery-3.6.3.min.js"></script>
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