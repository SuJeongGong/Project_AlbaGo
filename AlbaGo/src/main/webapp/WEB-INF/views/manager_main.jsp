<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>관리자메인</title>
</head>

<body>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../manager_Sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../manager_topbar.jsp" %>

                <!-- main 본문  -->
                <div class="container-fluid">
                    <!-- 요기다 작성  -->

                    <div class="container-fluid">

                        <!-- Page Heading -->

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                    오늘 가입자 수 </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">4,500명</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                    오늘 매출액</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">215,000</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-info text-uppercase mb-1">오늘
                                                    올라온 공고글</div>
                                                <div class="row no-gutters align-items-center">
                                                    <div class="col-auto">
                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">500
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="progress progress-sm mr-2">
                                                            <div class="progress-bar bg-info" role="progressbar"
                                                                style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pending Requests Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                    오늘 올라온 인재글</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">180</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->

                        <div class="row">
                            <!-- Area Chart -->
                            <div class="col-xl-8 col-lg-7">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">매출액</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pie Chart -->
                            <div class="col-xl-4 col-lg-5">
                                <div class="card shadow mb-4">
                                    <!-- Card Header - Dropdown -->
                                    <div
                                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">결제</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-pie pt-4 pb-2">
                                            <canvas id="myPieChart"></canvas>
                                        </div>
                                        <div class="mt-4 text-center small">
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-primary"></i> 글 갯수 늘리기
                                            </span>
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-success"></i> 이력서 확인
                                            </span>
                                            <span class="mr-2">
                                                <i class="fas fa-circle text-info"></i> UP
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">



                            <!-- Content Column -->

                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">아이템(UP)</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">기업1</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 40%"
                                                aria-valuenow="4" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업2</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%"
                                                aria-valuenow="5" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업3</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 20%"
                                                aria-valuenow="2" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업4</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%"
                                                aria-valuenow="10" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업5</h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 80%"
                                                aria-valuenow="8" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">게시글작성갯수</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">기업1</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 40%"
                                                aria-valuenow="4" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업2</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%"
                                                aria-valuenow="5" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업3</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 20%"
                                                aria-valuenow="2" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업4</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%"
                                                aria-valuenow="10" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업5</h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 80%"
                                                aria-valuenow="8" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">이력서열람</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">기업1</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 40%"
                                                aria-valuenow="4" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업2</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%"
                                                aria-valuenow="5" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업3</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 20%"
                                                aria-valuenow="2" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업4</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%"
                                                aria-valuenow="10" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업5</h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 80%"
                                                aria-valuenow="8" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">광고배너</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">기업1</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 40%"
                                                aria-valuenow="4" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업2</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%"
                                                aria-valuenow="5" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업3</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 20%"
                                                aria-valuenow="2" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업4</h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%"
                                                aria-valuenow="10" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">기업5</h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 80%"
                                                aria-valuenow="8" aria-valuemin="0" aria-valuemax="10"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div><!-- 끝 main -->
                <!-- footer -->
                <%@ include file="../manager_footer.jsp" %>
            </div><!-- 끝 content wrapper -->
        </div><!-- 끝  wrapper -->
</body>

</html>