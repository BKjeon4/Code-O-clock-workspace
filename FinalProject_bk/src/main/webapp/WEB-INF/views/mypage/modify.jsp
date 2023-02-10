<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Educal – Online Learning and Education HTML5 Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png" />
    <!-- CSS here -->
    <link rel="stylesheet" href="/assets/css/preloader.css" />
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/css/meanmenu.css" />
    <link rel="stylesheet" href="/assets/css/animate.min.css" />
    <link rel="stylesheet" href="/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/assets/css/swiper-bundle.css" />
    <link rel="stylesheet" href="/assets/css/backToTop.css" />
    <link rel="stylesheet" href="/assets/css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="/assets/css/fontAwesome5Pro.css" />
    <link rel="stylesheet" href="/assets/css/elegantFont.css" />
    <link rel="stylesheet" href="/assets/css/default.css" />
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link rel="stylesheet" href="/assets/css/wishlist.css" />
    <link rel="stylesheet" href="/assets/css/onoff.css">

    <script type="text/javascript">
      var member_id = '<%=(Integer)session.getAttribute("memIdInt")%>';
      
      if(member_id == 'null') {
         alert('로그인해야 이용할 수 있는 페이지입니다.');
         location.href = "/sign-in";
      }
   </script>
    

    <style>
      #accordionSidebar {
        background-color: aliceblue;
        border-radius: 20px;
        
      }
      .nav-item span {
        color: #2f4f4f;
        font-weight: bolder;
        margin-left: 10px;
        margin-bottom: 15px;
        font-family: sans-serif;
      }
      .nav-item i {
        color: #2f4f4f;
        font-weight: bolder;
        margin-left: 20px;
      }
      .collapse-item {
        margin-left: 30px;
        margin-top: 10px;
        margin-bottom: 20px;
      }

      .myaccount {
         
         border-radius: 20px;
         height: 100%;
         width: 100%;
         max-width: 650px;         
         margin-right: auto;
         margin-left: auto;
         background-color: white;
      }
      .form-group{
         margin-top:10px;
         margin-left:10px;
      }
      .accounthead h4 {
         font-weight: bolder;
         text-align: center;
         font-size : 50px;
         margin-bottom:20px;
      }

    </style>
  </head>
  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <!-- Add your site or application content here -->

    <!-- pre loader area start -->
    <div id="loading">
      <div id="loading-center">
        <div id="loading-center-absolute">
          <div class="loading-content">
            <img class="loading-logo-text" src="/assets/img/logo/logo-text-2.png" alt="" />
            <div class="loading-stroke">
              <img class="loading-logo-icon" src="/assets/img/logo/logo-icon.png" alt="" />
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
                                          <a href="/academy/course-sidebar">학원/강의</a>
                                          <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                                <li><a href="/lecture/tutor">튜터 목록</a></li>
                                                <li><a href="/lecture/lecture-sidebar">강의 목록</a></li>
                                          </ul>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="/board/honestQuestionList">게시판</a>
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
                                 <div class="header__cart">
                                    <a href="javascript:void(0);" class="cart-toggle-btn">
                                       <div class="header__cart-icon">
                                          <img src="/assets/img/heart.png" alt="heart">
   
                                       </div>
                                       <span class="cart-item">!</span>
                                    </a>
                                 </div>
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
                                          <a href="/academy/course-sidebar">학원/강의</a>
                                          <ul class="submenu">
                                                <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                                <li><a href="/academy/rank">학원 랭크</a></li>
                                                <li><a href="/lecture/tutor">튜터 목록</a></li>
                                                <li><a href="/lecture/lecture-sidebar">강의 목록</a></li>
                                          </ul>
                                       </li>
                                       <li class="has-dropdown">
                                          <a href="/board/honestQuestionList">게시판</a>
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
              <img src="/assets/img/logo/logo.png" alt="logo" />
            </a>
          </div>
          <div class="mobile-menu fix"></div>

          <div class="sidebar__search p-relative mt-40">
            <form action="#">
              <input type="text" placeholder="Search..." />
              <button type="submit"><i class="fad fa-search"></i></button>
            </form>
          </div>
          <div class="sidebar__cart mt-30">
            <a href="#">
              <div class="header__cart-icon">
                <svg viewBox="0 0 24 24">
                  <circle class="st0" cx="9" cy="21" r="1" />
                  <circle class="st0" cx="20" cy="21" r="1" />
                  <path
                    class="st0"
                    d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6"
                  />
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
      <section
        class="page__title-area page__title-height page__title-overlay d-flex align-items-center"
        data-background="/assets/img/page-title/page-title.gif"
      >
        <div class="container">
          <div class="row">
            <div class="col-xxl-12">
              <div class="page__title-wrapper mt-110">
                <h3 class="page__title">회원정보 수정</h3>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/startpage">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">회원정보 관리</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </section>
            <!-- 뒷 배경 그림들-->
  <div class="hero__shape">
    <img class="hero-1-circle" src="/assets/img/shape/hero/hero-1-circle.png" alt="">
    <img class="hero-1-circle-2" src="/assets/img/shape/hero/hero-1-circle-2.png" alt="">
    <img class="hero-1-dot-2" src="/assets/img/shape/hero/hero-1-dot-2.png" alt="">
 </div> 
      <!-- page title area end -->

      <!-- 왼쪽 메뉴 표 Strat-->
      
      <section class="cart-area pt-100 pb-100">
      
         <div class="container">
          
           <div class="row">
             <div class="col-sm-3">
               <div class="left-sidebar">
                 <ul
                   class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                   id="accordionSidebar"
                 >
  
                 <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/academyList"
                      data-toggle="collapse"
                      data-target="#collapseOne"
                      aria-expanded="true"
                      aria-controls="collapseOne"
                    >
                      <i class="fas fa-fw fa-address-card"></i> <span>회원정보 관리</span>
                    </a>
                    <div
                      id="collapseOne"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/mypage/modify">회원정보 수정</a><br />
                        <a class="collapse-item" href="/mypage/withdrawal">회원 탈퇴</a>
                      </div>
                    </div>
                  </li>
  
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/tutorList"
                      data-toggle="collapse"
                      data-target="#collapseTwo"
                      aria-expanded="true"
                      aria-controls="collapseTwo"
                    >
                      <i class="fas fa-fw fa-pencil"></i> <span>작성글 관리</span>
                    </a>
                    <div
                      id="collapseTwo"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/mypage/myreview">국비/부트 리뷰</a><br />
                        <a class="collapse-item" href="/mypage/myreview2">화상/교육 리뷰</a><br />
                       
                      </div>
                    </div>
                  </li>
  
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/tutorList"
                      data-toggle="collapse"
                      data-target="#collapseThree"
                      aria-expanded="true"
                      aria-controls="collapseThree"
                    >
                      <i class="fas fa-heart"></i> <span>WishList</span>
                    </a>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/mypage/wishlist?memIdInt=${sessionScope.memIdInt}">관심학원 리스트</a><br/> 
                        <a class="collapse-item" href="/mypage/jjimlist?memIdInt=${sessionScope.memIdInt}">관심강의 리스트</a>
                      </div>
                    </div>
                  </li>

                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/lectureList.do"
                      data-toggle="collapse"
                      data-target="#collapseFour"
                      aria-expanded="true"
                      aria-controls="collapseFour"
                    >
                      <i class="fas fa-fw fa-desktop"></i> <span>화상 내역</span>
                    </a>
                    <div
                      id="collapseFour"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="/mypage/lessonreserve">예약 현황</a><br />
                        <a class="collapse-item" href="/mypage/lessonbox">수업함</a>
                      </div>
                    </div>
                  </li>
  
  
  
                  <li class="nav-item">
                    <a 
                    class="nav-link collapsed"
                      href="admin/lectureList.do"
                      data-toggle="collapse"
                      data-target="#collapseFour2"
                      aria-expanded="true"
                      aria-controls="collapseFour2">
                      <i class="fas fa-fw fa-table"></i> <span>등록관리</span>
                    </a>
                   
                    <div
                    id="collapseFour2"
                    class="collapse"
                    aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar"
                  >
                  <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/mypage/tutorInsert">선생님 등록</a><br />
                    <a class="collapse-item" href="/mypage/educationInsert">학원 등록</a><br />
                  </div>
                </div>
                  </li>
                 
  
  
  
                  
                  <li class="nav-item">
                    <a
                      class="nav-link collapsed"
                      href="admin/lectureList.do"
                      data-toggle="collapse"
                      data-target="#collapseFive"
                      aria-expanded="true"
                      aria-controls="collapseFive"
                    >
                      <i class="fas fa-fw fa-desktop"></i> <span>튜터의 화상 내역</span>
                    </a>
                    <div
                      id="collapseFive"
                      class="collapse"
                      aria-labelledby="headingUtilities"
                      data-parent="#accordionSidebar"
                    >
                      <div class="bg-white py-2 collapse-inner rounded give-border">
                        <a class="collapse-item" href="/mypage/tutorReserve">예약 현황</a><br />
                        <a class="collapse-item" href="/mypage/tutorBox">수업함</a>
                      </div>
                    </div>
                  </li>
  
                  <!-- Nav Item - Pages Collapse Menu -->
                </ul>
              </div>
            </div>
  

            <!-- 메인 표-->
            
            <div class="col-sm-9">  
              <form action="modifyForm" method="post" id="modifyForm" class="myaccount">             
                        
                            <div class="sign__wrapper white-bg">                               
                                
                                <div class="sign__form">
                                    <!-- bk 수정하기 버튼 액션-->
                                    <form method="post" id="modifyForm" action="modifyForm">
                                      <input type="hidden" name="memIdInt" value="${member.memIdInt}" /> 
                                      <div class="sign__input-wrapper mb-25">
                                            <h5>아이디</h5>
                                            <div class="sign__input">
                                                <input
                                                 type="text" 
                                                 placeholder="ID" 
                                                 id="memIdString" 
                                                 name="memIdString"
                                                 required
                                                 tabindex="1"
                                                 aria-required="true"
                                                 readonly
                                                 value="${member.memIdString}"
                                                 />                                                
                                                <i class="fal fa-user"></i>                                                
                                            </div>                                      
                                            
                                        </div>
                                        
                                        <div class="sign__input-wrapper mb-25">
                                          <h5>비밀번호</h5>
                                          <div class="sign__input">
                                              <input type="password"
                                              placeholder="Password"
                                              id="memPass"
                                              name="memPass"
                                              required
                                              tabindex="2"
                                              aria-required="true"
                                              value="${member.memPass}"
                                              />
                                              <i class="fal fa-lock"></i>
                                          </div>                                          
                                      </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이름</h5>
                                            <div class="sign__input">
                                                <input type="text"
                                                placeholder="Full name" 
                                                id="memName" 
                                                name="memName" 
                                                required
                                                tabindex="3"
                                                aria-required="true" 
                                                value="${member.memName}"
                                                />
                                                <i class="fal fa-user"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>폰 번호</h5>
                                            <div class="sign__input">
                                                <input type="tel" 
                                                placeholder="Phone number" 
                                                id="memTel" 
                                                name="memTel" 
                                                required
                                                tabindex="4" 
                                                aria-required="true"
                                                value="${member.memTel}"
                                                />
                                                <i class="fal fa-phone"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이메일</h5>
                                            <div class="sign__input">
                                                <input type="email" 
                                                placeholder="E-mail address" 
                                                id="memEmail" 
                                                name="memEmail" 
                                                required
                                                tabindex="5"
                                                aria-required="true"
                                                value="${member.memEmail}"
                                                />
                                                <i class="fal fa-envelope"></i>
                                            </div>                                            
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>우편 번호</h5>
                                            <div class="sign__input">
                                                <!-- onclick 을 통해서 주소 찾기 api 가능-->
                                                <input type="text" 
                                                placeholder="Postal code" 
                                                id="m_post" 
                                                name="m_post"  
                                                onclick="findAddress()"  
                                                readonly  
                                                required 
                                                value="${member.m_post}"
                                                />
                                                <i class="fal fa-location"></i>
                                            </div>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>주소</h5>
                                            <div class="sign__input">
                                                <input 
                                                type="text" 
                                                placeholder="Address" 
                                                id="m_addr" 
                                                name="m_addr" 
                                                required
                                                readonly
                                                value="${member.m_addr}"
                                                />
                                                <i class="fal fa-location-arrow"></i>
                                            </div>
                                        </div>
                                        <div class="sign__input-wrapper mb-25">
                                            <h5>상세 주소</h5>
                                            <div class="sign__input">
                                                <input 
                                                type="text" 
                                                placeholder="Detailed address" 
                                                id="m_addr_sub" 
                                                name="m_addr_sub" 
                                                required
                                                value="${member.m_addr_sub}"
                                                />
                                                <i class="fal fa-location-arrow"></i>

                                            </div>
                                        </div>

                                

                                        <div class="sign__action d-flex justify-content-between mb-30">
                                            
                                        </div>
                                        <button 
                                        class="e-btn w-100" 
                                        type="submit" 
                                        id="modifyBtn" 
                                        name="modifyBtn">
                                        <span></span> 수정하기 </button>
                                        <div class="sign__new text-center mt-20">
                                            <p>탈퇴를 원하신다면 ? <a href="withdrawal"> 탈퇴하기 </a></p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>                    
              </form>            
            </div>
          </div>
        </div>
      </section>
      <!-- Cart Area End-->
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
    <script src="/assets/js/wishList.js"></script>

    <!--0106 좋아요 버튼 관련 ajax-->
    <!-- Bootstrap core JavaScript-->
    <script src="../admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        
    <!-- 카카오 주소 Address API -->
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        
        <script type="text/javascript">

          //function of Address API
          function findAddress() {
            new daum.Postcode({
              oncomplete: function (data) {

                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
                }

                document.getElementById("m_post").value = data.zonecode;
                document.getElementById("m_addr").value = addr;
                document.getElementById("m_addr_sub").focus();
              }
            }).open();
          }
        </script>  
    
  </body>
</html>