<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CODE O' CLOCK - Register</title>

    <!-- Custom fonts for this template-->
    <link href="../admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/admin/css/sb-admin-2.css" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/style.css" />
    <link rel="stylesheet" href="/assets/css/onoff.css">
    <link rel="stylesheet" href="/assets/css/fontAwesome5Pro.css" />
    <link rel="stylesheet" href="/assets/css/default.css" />
    <link rel="stylesheet" href="/assets/css/elegantFont.css" />

</head>

<body class="bg-gradient-dark">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Admin Account!</h1>
                            </div>
                            <div class="sign__form">
                                <!-- bk 회원가입 버튼 액션-->
                                <form action="insertAdmin" type="post">
                                    <div class="sign__input-wrapper mb-25">
                                        <h5>ID</h5>
                                        <div class="sign__input">
                                            <input type="text" class="form-control form-control-user" placeholder="ID" id="adId" name="adId" required/>                                                
                                            <i class="fal fa-user"></i>                       
                                        </div>
                                        <!-- 유효성검사 js 연결(아이디) -->
                                        <p id="chkNotice" size="2"></p>
                                        
                                    </div>


                                    <div class="sign__input-wrapper mb-25">
                                        <h5>Password</h5>
                                        <div class="sign__input">
                                            <input type="password" class="form-control form-control-user" placeholder="Password" id="adPass" name="adPass" required/>
                                            <i class="fal fa-lock"></i>
                                        </div>
                                        <!-- 유효성검사 js 연결(비밀번호)-->
                                        <p id="chkNotice2" size="2"></p>
                                    </div>
                                    <div class="sign__input-wrapper mb-10">
                                        <h5>Re-Password</h5>
                                        <div class="sign__input">
                                            <input type="password" class="form-control form-control-user" placeholder="Re-Password" id="adPass_ck"/>
                                            <i class="fal fa-lock"></i>
                                        </div>
                                        <!-- 유효성검사 js 연결(비밀번호 확인)-->
                                        <p id="chkNotice3" size="2"></p>
                                    </div>


                                    <div class="sign__input-wrapper mb-25">
                                        <h5>Phone Number</h5>
                                        <div class="sign__input">
                                            <input type="tel" class="form-control form-control-user" placeholder="Phone number" id="adTel" name="adTel" required/>
                                            <i class="fal fa-phone"></i>
                                        </div>
                                        <!-- 유효성검사 js 연결(폰번호)-->
                                        <p id="chkNotice5" size="2"></p>
                                    </div>

                                    <div class="sign__input-wrapper mb-25">
                                        <h5>E-mail</h5>
                                        <div class="sign__input">
                                            <input type="email" class="form-control form-control-user" placeholder="E-mail address" id="adEmail" name="adEmail" required/>
                                            <i class="fal fa-envelope"></i>
                                        </div>
                                        <!-- 유효성검사 js 연결(이메일)-->
                                        <p id="chkNotice6" size="2"></p>
                                    </div>


                                    <div class="sign__action d-flex justify-content-between mb-30">
                                        <div class="sign__agree d-flex align-items-center">
                                            
                                        </div>
                                    </div>
                                
                                    <button class="btn btn-dark btn-user btn-block" type="submit"><span></span> 회원가입</button>
                                </form>   
                                
                            </div>
                         
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../admin/vendor/jquery/jquery.min.js"></script>
  <script src="../admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../admin/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../admin/js/demo/chart-area-demo.js"></script>
  <script src="../admin/js/demo/chart-pie-demo.js"></script>
  <script src="../admin/js/sign-up.js"></script>

</body>

</html>