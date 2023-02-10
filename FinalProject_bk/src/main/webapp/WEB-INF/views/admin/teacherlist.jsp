<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jstl/core_rt" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>CODE O' CLOCK - 관리자페이지</title>

    <!-- Custom fonts for this template -->
    <link
      href="../admin/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

    <!-- Custom styles for this template -->
    <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet" />

    <!-- Custom styles for this page -->
    <link href="../admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="/admin/css/sb-admin-2.css" rel="stylesheet" />
    <style>
      a:hover {
        text-decoration: none;
      }
      .admina {
        font-weight: normal;
        white-space: nowrap;
        text-align: left;
      }
      .adminb {
        font-weight: normal;
        white-space: nowrap;
        text-align: right;
      }
    </style>
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index">
          <div class="sidebar-brand-icon rotate-n-15"></div>
          <div class="sidebar-brand-text mx-3">CODE O' CLOCK Admin</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- 메인페이지로 이동Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="index">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Education DashBoard</span></a
          >
          <a class="nav-link" href="index-member">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Member DashBoard</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Heading -->
        <div class="sidebar-heading">Interface</div>
        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
          <a class="nav-link" href="/admin/academyList">
            <i class="fas fa-graduation-cap"></i> <span>학원 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/teacherlist">
            <i class="fas fa fa-users"></i> <span>강사 관리</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/lecturelist">
            <i class="fa fa-play-circle"></i> <span>강의 관리</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/admin/memberlist">
            <i class="fas fa-user"></i> <span>회원관리</span>
          </a>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            href=""
            data-toggle="collapse"
            data-target="#collapseFive"
            aria-expanded="true"
            aria-controls="collapseFive"
          >
            <i class="fas fa-file"></i> <span>게시판관리</span>
          </a>
          <div
            id="collapseFive"
            class="collapse"
            aria-labelledby="headingTwo"
            data-parent="#accordionSidebar"
          >
            <div class="bg-white py-2 collapse-inner rounded">
              <a class="collapse-item" href="/admin/reviewList">리뷰 관리</a>
              <a class="collapse-item" href="/admin/honestList">솔직답변 관리</a>
              <a class="collapse-item" href="/admin/announcement_m">공지사항 관리</a>
            </div>
          </div>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
          <a class="nav-link" href="/admin/checkout">
            <i class="fas fa-credit-card"></i> <span>결제내역관리</span>
          </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
      </ul>
      <!-- End of Sidebar -->
      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">
              <!-- Nav Item - Search Dropdown (Visible Only XS) -->
              <li class="nav-item dropdown no-arrow d-sm-none">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="searchDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <i class="fas fa-search fa-fw"></i>
                </a>
                <!-- Dropdown - Messages -->
                <div
                  class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                  aria-labelledby="searchDropdown"
                >
                  <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                      <input
                        type="text"
                        class="form-control bg-light border-0 small"
                        placeholder="Search for..."
                        aria-label="Search"
                        aria-describedby="basic-addon2"
                      />
                      <div class="input-group-append">
                        <button class="btn btn-dark" type="button">
                          <i class="fas fa-search fa-sm"></i>
                        </button>
                      </div>
                    </div>
                  </form>
                </div>
              </li>

              <div class="topbar-divider d-none d-sm-block"></div>

              <!-- Nav Item - User Information -->
              <li class="nav-item dropdown no-arrow">
                <a
                  class="nav-link dropdown-toggle"
                  href="logoutAdmin"
                  id="userDropdown"
                  role="button"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  <span class="mr-2 d-none d-lg-inline text-gray-600 large"
                    >${sessionScope.adId}</span
                  >
                  <img class="img-profile rounded-circle" src="../admin/img/undraw_profile.svg" />
                </a>
                <!-- Dropdown - User Information -->
                <div
                  class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                  aria-labelledby="userDropdown"
                >
                  <div class="dropdown"></div>
                  <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    로그아웃
                  </a>
                </div>
              </li>
            </ul>
          </nav>
          <!-- End of Topbar -->

          <!-- 목록페이지시작Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">TeacherList</h1>
            <p class="mb-4"></p>

            <!-- 학원 목록 테이블 -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark">선생님 목록</h6>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>선생님고유번호</th>
                        <th>선생님이름</th>
                        <th>카테고리 키워드</th>
                        <th>선생님신청날짜</th>
                        <th>상태</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>선생님고유번호</th>
                        <th>선생님이름</th>
                        <th>카테고리 키워드</th>
                        <th>선생님신청날짜</th>
                        <th>상태</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <!--찬주야 여기서는 값 넣어야한다.-->
                      <c:forEach var="teacherlist" items="${teacherlist}">
                        <tr>
                          <td>${teacherlist.teacherId}</td>
                          <td>${teacherlist.tcName}</td>
                          <td>${teacherlist.tcKeyword}</td>
                          <td>
                            <fmt:formatDate value="${teacherlist.tcDate}" pattern="YYYY.MM.DD" />
                          </td>

                          <td>
                            <c:choose>
                              <c:when test="${teacherlist.tcTruefalse == 2 }">
                                <a
                                  href="teacherRegister?teacherId=${teacherlist.teacherId}"
                                  class="btn btn-secondary btn-icon-split"
                                >
                                  <span class="icon text-white-50">
                                    <i class="fas fa-arrow-right"></i>
                                  </span>
                                  <span class="text">승인대기중</span>
                                </a>
                              </c:when>

                              <c:when test="${teacherlist.tcTruefalse == 1}">
                                <a href="#" class="btn btn-success btn-icon-split">
                                  <span class="icon text-white-50">
                                    <i class="fas fa-check"></i>
                                  </span>
                                  <span class="text">승인</span>
                                </a>
                              </c:when>
                              <c:when test="${teacherlist.tcTruefalse == 0 }">
                                <a href="#" class="btn btn-light btn-icon-split">
                                  <span class="icon text-gray-600">
                                    <i class="fas fa-arrow-right"></i>
                                  </span>
                                  <span class="text">거절</span>
                                </a>
                              </c:when>
                            </c:choose>
                          </td>
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy; CODE O' CLOCK 2023</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div
      class="modal fade"
      id="logoutModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">정말로 로그아웃하시겠습니까?</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">아니요</button>
            <a class="btn btn-dark" href="login">로그아웃</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/admin/vendor/jquery/jquery.min.js"></script>
    <script src="/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/admin/js/demo/datatables-demo.js"></script>
    <script src="/assets/js/refund-custom.js"></script>
  </body>
</html>
