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
      <link rel="stylesheet" href="/assets/css/honest-review-list.css">
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
                     <img class="loading-logo-icon" src="/assets/img/logo/logo-icon.gif" alt="">
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

         <!-- page title area start -->
         <section class="page__title-area page__title-height page__title-overlay d-flex align-items-center" data-background="/assets/img/page-title/page-title.gif">
            <div class="container">
               <div class="row">
                  <div class="col-xxl-12">
                     <div class="page__title-wrapper mt-110">
                        <h3 class="page__title">Courses</h3>                         
                        <nav aria-label="breadcrumb">
                           <ol class="breadcrumb">
                              <li class="breadcrumb-item"><a href="/academy/index">Home</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Courses</li>
                           </ol>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- page title area end -->

         <!-- course area start -->
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
                              <h4>1 / 23 페이지</h4>
                           </div>
                        </div>
                        <div class="course__sort d-flex justify-content-sm-end">
                           <div class="course__sort-inner">
                              <select>
                                 <option>최신순</option>
                                 <option>조회순</option>
                                 <option>가나다순</option>
                              </select>
                           </div>
                        </div>
                     </div>

                     <div class="course__tab-conent">
                        <div class="tab-content" id="courseTabContent">

                           <div class="tab-pane fade show active" id="grid" role="tabpanel" aria-labelledby="grid-tab">
                              <div class="row">

                                 
                                 <c:forEach items="${honestQuestion}" var="HQ">

                                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6">
                                       <div class="course__item white-bg mb-30 fix">
                                          <div class="course__thumb w-img p-relative fix">
                                             <a href="course-details">
                                                <img src="/assets/img/profile-pic/${HQ.m_profile}" alt="">
                                             </a>
                                             <div class="course__tag">
                                                <a href="#">Art & Design</a>
                                             </div>
                                          </div>
                                          <div class="course__content">
                                             <div class="course__meta d-flex align-items-center justify-content-between">
                                                <div class="course__lesson">
                                                   <span><i class="far fa-book-alt"></i>43 Lesson</span>
                                                </div>
                                                <div class="course__rating">
                                                   <span><i class="icon_star"></i>4.5 (44)</span>
                                                </div>
                                             </div>
                                             <h3 class="course__title"><a href="course-details">${HQ.hq_title}</a></h3>
                                             <div class="course__teacher d-flex align-items-center">
                                                <div class="course__teacher-thumb mr-15">
                                                   <img src="/assets/img/course/teacher/teacher-1.jpg" alt="">
                                                </div>
                                                <h6><a href="instructor-details">${HQ.m_idstring}</a></h6>
                                             </div>
                                          </div>
                                          <div class="course__more d-flex justify-content-between align-items-center">
                                             <div class="course__status">
                                                <span>Free</span>
                                             </div>
                                             <div class="course__btn">
                                                <a href="course-details" class="link-btn">
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

                                 <!-- 솔직 질문 목록 시작 (수평 형태) -->
                                 <c:forEach items="${honestQuestion}" var="HQ">

                                    <div class="col-xxl-12">
                                       <div class="course__item white-bg mb-30 fix">
                                          <div class="row gx-0">
                                             <div class="col-xxl-4 col-xl-4 col-lg-4">
                                                <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                   <a href="course-details">
                                                      <img src="/assets/img/profile-pic/${HQ.m_profile}" alt="">
                                                   </a>
                                                   <div class="course__tag">
                                                      <a href="#">Art & Design</a>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="col-xxl-8 col-xl-8 col-lg-8">
                                                <div class="course__right">
                                                   <div class="course__content course__content-4">
                                                      <div class="course__meta d-flex align-items-center">
                                                         <div class="course__lesson mr-20">
                                                            <span><i class="far fa-book-alt"></i>43 Lesson</span>
                                                         </div>
                                                         <div class="course__rating">
                                                            <span><i class="icon_star"></i>4.5 (44)</span>
                                                         </div>
                                                      </div>
                                                      <h3 class="course__title">
                                                         <a href="course-details">${HQ.hq_title}</a>
                                                      </h3>
                                                      <div class="course__teacher d-flex align-items-center">
                                                         <div class="course__teacher-thumb mr-15">
                                                            <img src="/assets/img/course/teacher/teacher-1.jpg" alt="">
                                                         </div>
                                                         <h6><a href="instructor-details">${HQ.m_idstring}</a></h6>
                                                      </div>
                                                   </div>
                                                   <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                      <div class="course__status">
                                                         <span>Free</span>
                                                      </div>
                                                      <div class="course__btn">
                                                         <a href="course-details" class="link-btn">
                                                            Know Details
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

                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details">
                                                   <img src="/assets/img/course/list/course-2.jpg" alt="">
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#" class="sky-blue">Art & Design</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><i class="far fa-book-alt"></i>72 Lesson</span>
                                                      </div>
                                                      <div class="course__rating">
                                                         <span><i class="icon_star"></i>4.5 (44)</span>
                                                      </div>
                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details">Fundamentals of music theory Learn new.</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/teacher/teacher-2.jpg" alt="">
                                                      </div>
                                                      <h6><a href="instructor-details">Barry Tone</a></h6>
                                                   </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status d-flex align-items-center">
                                                      <span class="sky-blue">$32.00</span>
                                                      <span class="old-price">$68.00</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details" class="link-btn">
                                                         Know Details
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
                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details">
                                                   <img src="/assets/img/course/list/course-3.jpg" alt="">
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#" class="blue-2">Art & Design</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><i class="far fa-book-alt"></i>14 Lesson</span>
                                                      </div>
                                                      <div class="course__rating">
                                                         <span><i class="icon_star"></i>3.5 (32)</span>
                                                      </div>
                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details">Strategy law and organization Foundation</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/teacher/teacher-3.jpg" alt="">
                                                      </div>
                                                      <h6><a href="instructor-details">Elon Gated</a></h6>
                                                   </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status d-flex align-items-center">
                                                      <span class="blue-2">$46.00</span>
                                                      <span class="old-price">$68.00</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details" class="link-btn">
                                                         Know Details
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
                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details">
                                                   <img src="/assets/img/course/list/course-4.jpg" alt="">
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#" class="green">Art & Design</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><i class="far fa-book-alt"></i>14 Lesson</span>
                                                      </div>
                                                      <div class="course__rating">
                                                         <span><i class="icon_star"></i>3.5 (32)</span>
                                                      </div>
                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details">The business Intelligence analyst Course 2022</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/teacher/teacher-4.jpg" alt="">
                                                      </div>
                                                      <h6><a href="instructor-details">Eleanor Fant</a></h6>
                                                   </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status d-flex align-items-center">
                                                      <span class="green">$46.00</span>
                                                      <span class="old-price">$68.00</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details" class="link-btn">
                                                         Know Details
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
                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details">
                                                   <img src="/assets/img/course/list/course-5.jpg" alt="">
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#" class="blue">Art & Design</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><i class="far fa-book-alt"></i>14 Lesson</span>
                                                      </div>
                                                      <div class="course__rating">
                                                         <span><i class="icon_star"></i>3.5 (32)</span>
                                                      </div>
                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details">Build your media and Public presence</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/teacher/teacher-5.jpg" alt="">
                                                      </div>
                                                      <h6><a href="instructor-details">Pelican Steve</a></h6>
                                                   </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status d-flex align-items-center">
                                                      <span class="blue">$62.00</span>
                                                      <span class="old-price">$97.00</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details" class="link-btn">
                                                         Know Details
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
                                 <div class="col-xxl-12">
                                    <div class="course__item white-bg mb-30 fix">
                                       <div class="row gx-0">
                                          <div class="col-xxl-4 col-xl-4 col-lg-4">
                                             <div class="course__thumb course__thumb-list w-img p-relative fix">
                                                <a href="course-details">
                                                   <img src="/assets/img/course/list/course-6.jpg" alt="">
                                                </a>
                                                <div class="course__tag">
                                                   <a href="#" class="yellow">Art & Design</a>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xxl-8 col-xl-8 col-lg-8">
                                             <div class="course__right">
                                                <div class="course__content course__content-4">
                                                   <div class="course__meta d-flex align-items-center">
                                                      <div class="course__lesson mr-20">
                                                         <span><i class="far fa-book-alt"></i>33 Lesson</span>
                                                      </div>
                                                      <div class="course__rating">
                                                         <span><i class="icon_star"></i>3.5 (72)</span>
                                                      </div>
                                                   </div>
                                                   <h3 class="course__title">
                                                      <a href="course-details">Creative writing through Storytelling</a>
                                                   </h3>
                                                   <div class="course__teacher d-flex align-items-center">
                                                      <div class="course__teacher-thumb mr-15">
                                                         <img src="/assets/img/course/teacher/teacher-6.jpg" alt="">
                                                      </div>
                                                      <h6><a href="instructor-details">Elon Gated</a></h6>
                                                   </div>
                                                </div>
                                                <div class="course__more course__more-2 course__more-3 d-flex justify-content-between align-items-center">
                                                   <div class="course__status d-flex align-items-center">
                                                      <span class="yellow">$62.00</span>
                                                      <span class="old-price">$97.00</span>
                                                   </div>
                                                   <div class="course__btn">
                                                      <a href="course-details" class="link-btn">
                                                         Know Details
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
                              </div>
                           </div>
                         </div>
                         <div class="row">
                           <div class="col-xxl-12">
                              <div class="basic-pagination wow fadeInUp mt-30" data-wow-delay=".2s">
                                 <ul class="d-flex align-items-center"> 
                                    <li class="prev">
                                       <a href="course-grid" class="link-btn link-prev">
                                          Prev
                                          <i class="arrow_left"></i>
                                          <i class="arrow_left"></i>
                                       </a>
                                    </li>
                                    <li>
                                       <a href="course-grid">
                                          <span>1</span>
                                       </a>
                                    </li>
                                    <li class="active">
                                       <a href="course-grid">
                                          <span>2</span>
                                       </a>
                                    </li>
                                    <li>
                                       <a href="product">
                                          <span>3</span>
                                       </a>
                                    </li>
                                    <li class="next">
                                       <a href="course-grid" class="link-btn">
                                          Next
                                          <i class="arrow_right"></i>
                                          <i class="arrow_right"></i>
                                       </a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xxl-4 col-xl-4 col-lg-4">
                     <div class="course__sidebar pl-70">
                        <div class="course__sidebar-search mb-50">
                           <form action="#">
                              <input type="text" placeholder="Search for courses...">
                              <button type="submit">
                                 <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 584.4 584.4" style="enable-background:new 0 0 584.4 584.4;" xml:space="preserve">
                                    <g>
                                       <g>
                                          <path class="st0" d="M565.7,474.9l-61.1-61.1c-3.8-3.8-8.8-5.9-13.9-5.9c-6.3,0-12.1,3-15.9,8.3c-16.3,22.4-36,42.1-58.4,58.4    c-4.8,3.5-7.8,8.8-8.3,14.5c-0.4,5.6,1.7,11.3,5.8,15.4l61.1,61.1c12.1,12.1,28.2,18.8,45.4,18.8c17.1,0,33.3-6.7,45.4-18.8    C590.7,540.6,590.7,499.9,565.7,474.9z"/>
                                          <path class="st1" d="M254.6,509.1c140.4,0,254.5-114.2,254.5-254.5C509.1,114.2,394.9,0,254.6,0C114.2,0,0,114.2,0,254.5    C0,394.9,114.2,509.1,254.6,509.1z M254.6,76.4c98.2,0,178.1,79.9,178.1,178.1s-79.9,178.1-178.1,178.1S76.4,352.8,76.4,254.5    S156.3,76.4,254.6,76.4z"/>
                                       </g>
                                    </g>
                                 </svg>
                              </button>
                           </form>
                        </div>
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-info">
                              <h3 class="course__sidebar-title">카테고리</h3>
                              <ul class="filter-button-group">
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <button id="m-eng1" data-filter=".cat1" class="">국비</button>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-edu">
                                       <label class="m-check-label" for="m-edu">부트캠프</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-bus">
                                       <label class="m-check-label" for="m-bus">취업</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-design">
                                       <label class="m-check-label" for="m-design">기술</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-math">
                                       <label class="m-check-label" for="m-math">개발자 팁</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-math">
                                       <label class="m-check-label" for="m-math">기타</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-info">
                              <h3 class="course__sidebar-title">Language</h3>
                              <ul>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-all">
                                       <label class="m-check-label" for="m-all">All Language</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-eng-2">
                                       <label class="m-check-label" for="m-eng-2">English</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-russ">
                                       <label class="m-check-label" for="m-russ">Russian</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-info">
                              <h3 class="course__sidebar-title">Price Filter</h3>
                              <ul>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-all-course">
                                       <label class="m-check-label" for="m-all-course">All  (204)</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-free">
                                       <label class="m-check-label" for="m-free">Free Courses  (36)</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-premium">
                                       <label class="m-check-label" for="m-premium">Premium Courses  (184)</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-info">
                              <h3 class="course__sidebar-title">Skill level</h3>
                              <ul>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-level">
                                       <label class="m-check-label" for="m-level">All Levels  (50)</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-beginner">
                                       <label class="m-check-label" for="m-beginner">Beginner  (32)</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-intermediate">
                                       <label class="m-check-label" for="m-intermediate">Intermediate  (17)</label>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="course__sidebar-check mb-10 d-flex align-items-center">
                                       <input class="m-check-input" type="checkbox" id="m-expert">
                                       <label class="m-check-label" for="m-expert">Expert  (2)</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>

                        <!-- 솔직 질문 등록하기 -->
                        <div class="course__sidebar-widget grey-bg">
                           <div class="course__sidebar-course">
                              <h3 class="course__sidebar-title">솔직 질문 등록</h3>
                              <div class="ml-20 d-none d-sm-block">
                                 <button class="e-btn e-btn-4" data-bs-toggle="modal" data-bs-target="#exampleModal">등록하기</button>
                              </div>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- course area end -->

         

      </main>

      <!-- modal: HonestQuestion -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <form action="insertHQ" method="post">
                  <div class="modal-header">
                     <h5 class="modal-title" id="exampleModalLabel">솔직 질문</h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                     <input type="hidden" name="memIdInt" value="${sessionScope.memIdInt}">
                     <div class="mb-3">
                        <label class="col-form-label">카테고리:</label>
                        <div class="hq-category">
                           <div class="div2">국비</div>
                           <div class="div2">부트캠프</div>
                           <div class="div2">취업</div>
                           <div class="div2">기술</div>
                           <div class="div2">개발자 팁</div>
                        </div>
                        <input type="hidden" id="hq_cat" name="hq_category">
                     </div>
                     <div class="row mb-2">
                        <div class="col-4">
                           <label for="hq_keyIn" class="col-form-label">키워드:</label>
                           <input type="text" class="form-control" id="hq_keyIn">
                        </div>
                        <div class="col-8" id="keyword_show"></div>
                        <input type="hidden" id="hq_keyOut" name="hq_keyword">
                     </div>
                     <div class="mb-3">
                        <label for="hq_title" class="col-form-label">제목:</label>
                        <input type="text" class="form-control" id="hq_title" name="hq_title">
                     </div>
                     <div class="mb-3">
                        <label for="hq_content" class="col-form-label">내용:</label>
                        <textarea class="form-control" id="hq_content" name="hq_content"></textarea>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-primary">등록하기</button>
                     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
       

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
      <script src="/assets/js/honest-review-list.js"></script>
   </body>
</html>

