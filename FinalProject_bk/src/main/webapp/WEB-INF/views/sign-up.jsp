<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
        <link rel="stylesheet" href="/assets/css/onoff.css">
    </head>
    <body>
        <!--[if lte IE 9]>
            <p class="browserupgrade">
                You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.
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
                            <img class="loading-logo-icon" src="/assets/img/logo/logo-icon.gif" alt="" />
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
                                   <a href="course-grid" class="cat-menu d-flex align-items-center">
                                      <div class="cat-dot-icon d-inline-block">
                                      
                                         <input type="checkbox" id="switch" /><label class="onoff" for="switch">Toggle</label>

                                      </div>
                                
                                   </a>
                                   
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
                                      <li class="has-dropdown">
                                         <a href="/about">About</a>
                                         <ul class="submenu">
                                            <li><a href="/about">소개</a></li>
                                            <li><a href="/map">지도</a></li>
                                         </ul>
                                      </li>
                                      <li class="has-dropdown">
                                         <a>학원/화상</a>
                                         <ul class="submenu">
                                            <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                            <li><a href="/academy/rank">학원 랭크</a></li>
                                            <li><a href="/lecture/tutor">선생님</a></li>
                                            <li><a href="/lecture/lecture-sidebar">강의</a></li>
                                         </ul>
                                      </li>
                                      <li class="has-dropdown">
                                         <a href="honestAnswer">게시판</a>
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
                                <form action="#">
                                   <input type="text" placeholder="Search...">
                                   <button type="submit"><i class="fad fa-search"></i></button>
                                </form>
                                <div class="header__cart">
                                   <a href="javascript:void(0);" class="cart-toggle-btn">
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
                          <div class="eader__center align-items-center d-flex justify-content-center">
                             <div class="main-menu main-menu-3">
                                <nav id="mobile-menu">
                                   <ul>
                                      <li class="has-dropdown">
                                         <a href="/about">About</a>
                                         <ul class="submenu">
                                            <li><a href="/about">소개</a></li>
                                            <li><a href="/map">지도</a></li>
                                         </ul>
                                      </li>
                                      <li class="has-dropdown">
                                         <a>학원/화상</a>
                                         <ul class="submenu">
                                            <li><a href="/academy/course-sidebar">학원 목록</a></li>
                                            <li><a href="/academy/rank">학원 랭크</a></li>
                                            <li><a href="/lecture/tutor">선생님</a></li>
                                            <li><a href="/lecture/lecture-sidebar">강의</a></li>
                                         </ul>
                                      </li>
                                      <li class="has-dropdown">
                                         <a>게시판</a>
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

                                <form id = "main" action=/academy/course-sidebar method="GET">
                                   <input type="text" name ="keywords"  placeholder="ex)교육과정 및 학원이름 검색">
                                   <button type="submit"><i class="fad fa-search"></i></button>
                                </form>
                                <!-- 검색 끝-->




                                <div class="header__cart">
                                   <a href="javascript:void(0);" class="cart-toggle-btn">
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
                             <div class="header__btn ml-20 d-none d-sm-block">
                                <a href="/logoutMember" class="e-btn">로그아웃</a>
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
                <div class="cartmini__widget">
                    <div class="cartmini__inner">
                        <ul>
                            <li>
                                <div class="cartmini__thumb">
                                    <a href="#">
                                        <img src="/assets/img/course/sm/cart-1.jpg" alt="" />
                                    </a>
                                </div>
                                <div class="cartmini__content">
                                    <h5><a href="#">Strategy law and organization Foundation </a></h5>
                                    <div class="product-quantity mt-10 mb-10">
                                        <span class="cart-minus">-</span>
                                        <input class="cart-input" type="text" value="1" />
                                        <span class="cart-plus">+</span>
                                    </div>
                                    <div class="product__sm-price-wrapper">
                                        <span class="product__sm-price">$46.00</span>
                                    </div>
                                </div>
                                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
                            </li>
                            <li>
                                <div class="cartmini__thumb">
                                    <a href="#">
                                        <img src="/assets/img/course/sm/cart-2.jpg" alt="" />
                                    </a>
                                </div>
                                <div class="cartmini__content">
                                    <h5><a href="#">Fundamentals of music theory Learn new</a></h5>
                                    <div class="product-quantity mt-10 mb-10">
                                        <span class="cart-minus">-</span>
                                        <input class="cart-input" type="text" value="1" />
                                        <span class="cart-plus">+</span>
                                    </div>
                                    <div class="product__sm-price-wrapper">
                                        <span class="product__sm-price">$32.00</span>
                                    </div>
                                </div>
                                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
                            </li>
                            <li>
                                <div class="cartmini__thumb">
                                    <a href="#">
                                        <img src="/assets/img/course/sm/cart-3.jpg" alt="" />
                                    </a>
                                </div>
                                <div class="cartmini__content">
                                    <h5><a href="#">Strategy law and organization Foundation </a></h5>
                                    <div class="product-quantity mt-10 mb-10">
                                        <span class="cart-minus">-</span>
                                        <input class="cart-input" type="text" value="1" />
                                        <span class="cart-plus">+</span>
                                    </div>
                                    <div class="product__sm-price-wrapper">
                                        <span class="product__sm-price">$62.00</span>
                                    </div>
                                </div>
                                <a href="#" class="cartmini__del"><i class="fal fa-times"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="cartmini__checkout">
                        <div class="cartmini__checkout-title mb-30">
                            <h4>Subtotal:</h4>
                            <span>$113.00</span>
                        </div>
                        <div class="cartmini__checkout-btn">
                            <a href="cart" class="e-btn e-btn-border mb-10 w-100"> <span></span> view cart</a>
                            <a href="checkout" class="e-btn w-100"> <span></span> checkout</a>
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
                                    <path class="st0" d="M1,1h4l2.7,13.4c0.2,1,1,1.6,2,1.6h9.7c1,0,1.8-0.7,2-1.6L23,6H6" />
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
            <!-- sign up area start -->
            <section class="signup__area po-rel-z1 pt-100 pb-145">
                <div class="sign__shape">
                    <img class="man-1" src="/assets/img/icon/sign/man-3.png" alt="" />
                    <img class="man-2 man-22" src="/assets/img/icon/sign/man-2.png" alt="" />
                    <img class="circle" src="/assets/img/icon/sign/circle.png" alt="" />
                    <img class="zigzag" src="/assets/img/icon/sign/zigzag.png" alt="" />
                    <img class="dot" src="/assets/img/icon/sign/dot.png" alt="" />
                    <img class="bg" src="/assets/img/icon/sign/sign-up.png" alt="" />
                    <img class="flower" src="/assets/img/icon/sign/flower.png" alt="" />
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xxl-8 offset-xxl-2 col-xl-8 offset-xl-2">
                            <div class="section__title-wrapper text-center mb-55">
                                <h2 class="section__title">
                                    회원가입 <br />
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xxl-6 offset-xxl-3 col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
                            <div class="sign__wrapper white-bg">
                                
                                
                                <div class="sign__form">
                                    <!-- bk 회원가입 버튼 액션-->
                                    <form action="insertMember" type="post">
                                        <div class="sign__input-wrapper mb-25">
                                            <h5>아이디</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="ID" id="memIdString" name="memIdString" required/>                                                
                                                <i class="fal fa-user"></i>                                                
                                            </div>
                                            <!-- 유효성검사 js 연결(아이디) -->
                                            <p id="chkNotice" size="2"></p>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>비밀번호</h5>
                                            <div class="sign__input">
                                                <input type="password" placeholder="Password" id="m_pass" name="memPass" required/>
                                                <i class="fal fa-lock"></i>
                                            </div>
                                            <!-- 유효성검사 js 연결(비밀번호)-->
                                            <p id="chkNotice2" size="2"></p>
                                        </div>
                                        <div class="sign__input-wrapper mb-10">
                                            <h5>비밀번호 확인</h5>
                                            <div class="sign__input">
                                                <input type="password" placeholder="Re-Password" id="m_pass_ck"/>
                                                <i class="fal fa-lock"></i>
                                            </div>
                                            <!-- 유효성검사 js 연결(비밀번호 확인)-->
                                            <p id="chkNotice3" size="2"></p>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이름</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="Full name" id="m_name" name="memName" required/>
                                                <i class="fal fa-user"></i>
                                            </div>
                                            <!-- 유효성검사 js 연결(이름)-->
                                            <p id="chkNotice4" size="2"></p>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>연락처</h5>
                                            <div class="sign__input">
                                                <input type="tel" placeholder="Phone number" id="m_tel" name="memTel" required/>
                                                <i class="fal fa-phone"></i>
                                            </div>
                                            <!-- 유효성검사 js 연결(폰번호)-->
                                            <p id="chkNotice5" size="2"></p>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>이메일</h5>
                                            <div class="sign__input">
                                                <input type="email" placeholder="E-mail address" id="m_email" name="memEmail" required/>
                                                <i class="fal fa-envelope"></i>
                                            </div>
                                            <!-- 유효성검사 js 연결(이메일)-->
                                            <p id="chkNotice6" size="2"></p>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>우편번호</h5>
                                            <div class="sign__input">
                                                <!-- onclick 을 통해서 주소 찾기 api 가능-->
                                                <input type="text" placeholder="Postal code" id="m_post" name="m_post"  onclick="findAddress()"  readonly  required/>
                                                <i class="fal fa-location"></i>
                                            </div>
                                        </div>

                                        <div class="sign__input-wrapper mb-25">
                                            <h5>주소</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="Address" id="m_addr" name="m_addr" required/>
                                                <i class="fal fa-location-arrow"></i>
                                            </div>
                                        </div>
                                        <div class="sign__input-wrapper mb-25">
                                            <h5>상세주소</h5>
                                            <div class="sign__input">
                                                <input type="text" placeholder="Detailed address" id="m_addr_sub" name="m_addr_sub" required/>
                                                <i class="fal fa-location-arrow"></i>
                                            </div>
                                            <br/>
                                        </div>
                                        <button class="e-btn w-100" type="submit"><span></span> 회원가입</button>
                                        <div class="sign__new text-center mt-20">
                                            <p>계정이 이미 있으신가요? <a href="sign-in"> 로그인</a></p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- sign up area end -->
        </main>

        <!-- footer area start -->
        <footer>
            <div class="footer__area footer-bg">
                <div class="footer__top pt-90 pb-40">
                    <div class="container">
                        <div class="row">
                            <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-4 col-sm-6">
                                <div class="footer__widget mb-50">
                                    <div class="footer__widget-head mb-22">
                                        <div class="footer__logo">
                                            <a href="index">
                                                <img src="/assets/img/logo/logo-2.png" alt="" />
                                            </a>
                                        </div>
                                    </div>
                                    <div class="footer__widget-body">
                                        <p>Great lesson ideas and lesson plans for ESL teachers! Educators can customize lesson plans to best.</p>

                                        <div class="footer__social">
                                            <ul>
                                                <li>
                                                    <a href="#"><i class="social_facebook"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" class="tw"><i class="social_twitter"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" class="pin"><i class="social_pinterest"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-2 offset-xxl-1 col-xl-2 offset-xl-1 col-lg-3 offset-lg-0 col-md-2 offset-md-1 col-sm-5 offset-sm-1">
                                <div class="footer__widget mb-50">
                                    <div class="footer__widget-head mb-22">
                                        <h3 class="footer__widget-title">Company</h3>
                                    </div>
                                    <div class="footer__widget-body">
                                        <div class="footer__link">
                                            <ul>
                                                <li><a href="#">About</a></li>
                                                <li><a href="#">Courses</a></li>
                                                <li><a href="#">Events</a></li>
                                                <li><a href="#">Instructor</a></li>
                                                <li><a href="#">Career</a></li>
                                                <li><a href="#">Become a Teacher</a></li>
                                                <li><a href="#">Contact</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-2 col-xl-2 col-lg-2 offset-lg-0 col-md-3 offset-md-1 col-sm-6">
                                <div class="footer__widget mb-50">
                                    <div class="footer__widget-head mb-22">
                                        <h3 class="footer__widget-title">Platform</h3>
                                    </div>
                                    <div class="footer__widget-body">
                                        <div class="footer__link">
                                            <ul>
                                                <li><a href="#">Browse Library</a></li>
                                                <li><a href="#">Library</a></li>
                                                <li><a href="#">Partners</a></li>
                                                <li><a href="#">News & Blogs</a></li>
                                                <li><a href="#">FAQs</a></li>
                                                <li><a href="#">Tutorials</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-5 col-sm-6">
                                <div class="footer__widget footer__pl-70 mb-50">
                                    <div class="footer__widget-head mb-22">
                                        <h3 class="footer__widget-title">Subscribe</h3>
                                    </div>
                                    <div class="footer__widget-body">
                                        <div class="footer__subscribe">
                                            <form action="#">
                                                <div class="footer__subscribe-input mb-15">
                                                    <input type="email" placeholder="Your email address" />
                                                    <button type="submit">
                                                        <i class="far fa-arrow-right"></i>
                                                        <i class="far fa-arrow-right"></i>
                                                    </button>
                                                </div>
                                            </form>
                                            <p>Get the latest news and updates right at your inbox.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer__bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-xxl-12">
                                <div class="footer__copyright text-center">
                                    <p>© 2022 Educal, All Rights Reserved. Design By <a href="index">Theme Pure</a></p>
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
        <script src="/assets/js/jquery-3.6.3.min.js"></script>
        <script src="/assets/js/sign-up.js"></script>
        
        <!-- 카카오 주소 Address API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
   <script type="text/javascript">
   
    //function of Address API
      function findAddress() {
          new daum.Postcode({
              oncomplete: function(data) {
   
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
