<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>관리자메인</title>
<%
	ArrayList<HashMap<String,Object>> sales =(ArrayList<HashMap<String,Object>>) request.getAttribute("Recent_sales");
	ArrayList<HashMap<String,Object>> items =(ArrayList<HashMap<String,Object>>) request.getAttribute("items");
	long  totalCount = (long)Integer.valueOf(items.get(0).get("count").toString()) 
			+ (long)Integer.valueOf(items.get(1).get("count").toString())   
			+ (long)Integer.valueOf(items.get(2).get("count").toString()) 
			+ (long)Integer.valueOf(items.get(3).get("count").toString()) ;
%> 
</head>

<body>

<%
HashMap<String, Object> totalM =(HashMap)request.getAttribute("totalM");
%>
    <div id="wrapper">
        <!-- 사이드 바 -->
        <%@ include file="../serve/manager_sidebar.jsp" %>

        <!-- content wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- main -->
            <div id="content">
                <!-- Topbar -->
                <%@ include file="../serve/manager_topbar.jsp" %>

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
                                                <div class="h5 mb-0 font-weight-bold text-gray-800"id="todaytotal"><%=request.getAttribute("todaytotal")%></div>
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
                                                <div class="h5 mb-0 font-weight-bold text-gray-800" id="totalM"><%=totalM.get("price")%></div>
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
                                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800" id="todaycount"><%=request.getAttribute("todaycount")%>
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
                                                <div class="h5 mb-0 font-weight-bold text-gray-800" id="todaycount_resume"><%=request.getAttribute("todaycount_resume")%></div>
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
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 40%" aria-valuenow="4" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업2</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 50%" aria-valuenow="5" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업3</h4>
										<div class="progress mb-4">
											<div class="progress-bar" role="progressbar"
												style="width: 20%" aria-valuenow="2" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업4</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 100%" aria-valuenow="10" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업5</h4>
										<div class="progress">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 80%" aria-valuenow="8" aria-valuemin="0"
												aria-valuemax="10"></div>
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
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 40%" aria-valuenow="4" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업2</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 50%" aria-valuenow="5" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업3</h4>
										<div class="progress mb-4">
											<div class="progress-bar" role="progressbar"
												style="width: 20%" aria-valuenow="2" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업4</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 100%" aria-valuenow="10" aria-valuemin="0"
												aria-valuemax="10"></div>
										</div>
										<h4 class="small font-weight-bold">기업5</h4>
										<div class="progress">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 80%" aria-valuenow="8" aria-valuemin="0"
												aria-valuemax="10"></div>
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

				</div>
				<!-- 끝 main -->
				<!-- footer -->
				<%@ include file="../serve/manager_footer.jsp"%>
			</div>
			<!-- 끝 content wrapper -->
		</div>
		<!-- 끝  wrapper -->
		<script type="text/javascript">
			var ctx = document.getElementById("myPieChart");
			var myPieChart = new Chart(ctx, {
				type : 'doughnut',
				data : {
					labels :["board","resume","up","AD"],
						datasets : [ {
						data : [ (<%=totalCount%>/<%=(long)items.get(0).get("count")%>).toFixed(1), 
								(<%=totalCount%>/<%=(long)items.get(1).get("count")%>).toFixed(1), 
								(<%=totalCount%>/<%=(long)items.get(2).get("count")%>).toFixed(1),
								(<%=totalCount%>/<%=(long)items.get(3).get("count")%>).toFixed(1) ],
						backgroundColor : [ '#4e73df', '#1cc88a', '#36b9cc' ],
						hoverBackgroundColor : [ '#2e59d9', '#17a673',
								'#2c9faf' ],
						hoverBorderColor : "rgba(234, 236, 244, 1)",
					} ],
				},
				options : {
					maintainAspectRatio : false,
					tooltips : {
						backgroundColor : "rgb(255,255,255)",
						bodyFontColor : "#858796",
						borderColor : '#dddfeb',
						borderWidth : 1,
						xPadding : 15,
						yPadding : 15,
						displayColors : false,
						caretPadding : 10,
					},
					legend : {
						display : false
					},
					cutoutPercentage : 80,
				},
			});

			function number_format(number, decimals, dec_point, thousands_sep) {
				// *     example: number_format(1234.56, 2, ',', ' ');
				// *     return: '1 234,56'
				number = (number + '').replace(',', '').replace(' ', '');
				var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
						: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
						: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
						: dec_point, s = '', toFixedFix = function(n, prec) {
					var k = Math.pow(10, prec);
					return '' + Math.round(n * k) / k;
				};
				// Fix for IE parseFloat(0.55).toFixed(0) = 0;
				s = (prec ? toFixedFix(n, prec) : '' + Math.round(n))
						.split('.');
				if (s[0].length > 3) {
					s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
				}
				if ((s[1] || '').length < prec) {
					s[1] = s[1] || '';
					s[1] += new Array(prec - s[1].length + 1).join('0');
				}
				return s.join(dec);
			}

			// Bar Chart Example
			var ctx = document.getElementById("myBarChart");
			var myBarChart = new Chart(
					ctx,
					{
						type : 'bar',
						data : {
							labels : [ "<%=sales.get(0).get("date")%>", "<%=sales.get(1).get("date")%>", "<%=sales.get(2).get("date")%>",
								"<%=sales.get(3).get("date")%>", "<%=sales.get(4).get("date")%>", "<%=sales.get(5).get("date")%>",
								"<%=sales.get(6).get("date")%>" ],
							datasets : [ {
								label : "매출액",
								backgroundColor : "#4e73df",
								hoverBackgroundColor : "#2e59d9",
								borderColor : "#4e73df",
								data :  [ <%=sales.get(0).get("price")%>, <%=sales.get(1).get("price")%>, 
									<%=sales.get(2).get("price")%>,<%=sales.get(3).get("price")%>, 
									<%=sales.get(4).get("price")%>, <%=sales.get(5).get("price")%>,<%=sales.get(6).get("price")%> ]

							} ],
						},
						options : {
							maintainAspectRatio : false,
							layout : {
								padding : {
									left : 10,
									right : 25,
									top : 25,
									bottom : 0
								}
							},
							scales : {
								xAxes : [ {
									time : {
										unit : 'month'
									},
									gridLines : {
										display : false,
										drawBorder : false
									},
									ticks : {
										maxTicksLimit : 7
									},
									maxBarThickness : 25,
								} ],
								yAxes : [ {
									ticks : {
										min : 500000,
										max : 10000000,
										maxTicksLimit : 5,
										padding : 10,
										// Include a dollar sign in the ticks
										callback : function(value, index,
												values) {
											return '$' + number_format(value);
										}
									},
									gridLines : {
										color : "rgb(234, 236, 244)",
										zeroLineColor : "rgb(234, 236, 244)",
										drawBorder : false,
										borderDash : [ 2 ],
										zeroLineBorderDash : [ 2 ]
									}
								} ],
							},
							legend : {
								display : false
							},
							tooltips : {
								titleMarginBottom : 10,
								titleFontColor : '#6e707e',
								titleFontSize : 14,
								backgroundColor : "rgb(255,255,255)",
								bodyFontColor : "#858796",
								borderColor : '#dddfeb',
								borderWidth : 1,
								xPadding : 15,
								yPadding : 15,
								displayColors : false,
								caretPadding : 10,
								callbacks : {
									label : function(tooltipItem, chart) {
										var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
												|| '';
										return datasetLabel
												+ ': $'
												+ number_format(tooltipItem.yLabel);
									}
								}
							},
						}
					});
		</script>
</body>

</html>