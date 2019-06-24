<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html class="h-100">
   <head>
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       <title>Sample Page</title>
       <!-- css -->
       <link rel="stylesheet" type="text/css" href="/resources/common/modules/fontawesome/css/all.min.css" />
       <link rel="stylesheet" type="text/css" href="/resources/common/css/bootstrap.min.css" />
       <link rel="stylesheet" type="text/css" href="/resources/common/css/sticky-footer.css" />
       <link rel="stylesheet" type="text/css" href="/resources/common/css/sb-admin-2.css" />
       <!-- js -->
       <script type="text/javascript" src="/resources/common/js/jquery-3.4.1.min.js"></script>
       <script type="text/javascript" src="/resources/common/js/popper.min.js"></script>
       <script type="text/javascript" src="/resources/common/js/bootstrap.min.js"></script>
       <script type="text/javascript" src="/resources/common/js/jquery.easing.min.js"></script>
       <script type="text/javascript" src="/resources/common/modules/chart/chart.js"></script>
       <script type="text/javascript" src="/resources/common/modules/chart/utils.js"></script>
       <style>
		canvas {
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
		}
		</style>
	   </head>
	   <body class="d-flex flex-column h-100" style="background-color: #f8f9fc;">
			<!-- Begin page content -->
			<main role="main" class="flex-shrink-0">
			<div class="container">
				<div style="text-align:center;">
				<h3 class="h3 my-3 text-gray-800">소스코드품질 상세현황</h1>
				</div>
				<h6 class="h6 my-3 text-gray-800">개요</h6>
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th scope="row">시스템명</th>
				      <td colspan="3">CodeEyes</td>
				      <th>시스템등급</th>
				      <td>3등급</td>
				    </tr>
				  </thead>
				  <tbody>				   
				    <tr>
				      <th scope="row">최종점검일</th>
				      <td>2019-06-24 12:00</td>
				      <th>개발언어</th>
				      <td>JAVA WEB</td>
				      <th>AP담당자</th>
				      <td>박혜민</td>
				    </tr>
				  </tbody>
				</table>
				
				<h6 class="h6 my-3 text-gray-800">요약</h6>
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th scope="row">시스템명</th>
				      <th>개발언어</th>
				      <th>대상파일수</th>
				      <th>위반파일수</th>
				      <th>준수율</th>
				    </tr>
				  </thead>
				  <tbody>				   
				    <tr>
				      <td scope="row">CodeEyes</td>
				      <td>JAVA WEB</td>
				      <td>2039</td>
				      <td>209</td>
				      <td>89.7%</td>
				    </tr>
				  </tbody>
				</table>
				
				<h6 class="h6 my-3 text-gray-800">위반추이</h6>
				<canvas id="canvas"></canvas>
				
				<h6 class="h6 my-3 text-gray-800">룰 등급별 위반 현황</h6>
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th scope="row">시스템/Package</th>
				      <th>개발언어</th>
				      <th>Blocker</th>
				      <th>Critical</th>
				      <th>Urgent</th>
				      <th>Important</th>
				      <th>Warning</th>
				      <th>합계</th>
				    </tr>
				  </thead>
				  <tbody>				   
				    <tr>
				      <td scope="row">CodeEyes</td>
				      <td>JAVA WEB</td>
				      <td>29</td>
				      <td>289</td>
				      <td>1400</td>
				      <td>1670</td>
				      <td>585</td>
				      <td>3973</td>
				    </tr>
				  </tbody>
				</table>
				
				<h6 class="h6 my-3 text-gray-800">룰별 위반 현황</h6>
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th scope="row">개발언어</th>
				      <th>등급</th>
				      <th>룰명</th>
				      <th>위반건수</th>
				      <th>수정대상</th>
				    </tr>
				  </thead>
				  <tbody>				   
				    <tr>
				      <td scope="row">JAVA WEB</td>
				      <td>Critical</td>
				      <td>Loop의 마지막 구문에 Break / Continue 사용 금지</td>
				      <td>2</td>
				      <td>필수</td>
				    </tr>
				    <tr>
				      <td scope="row">JAVA WEB</td>
				      <td>Important</td>
				      <td>"0"으로 시작하는 정수 사용 금지</td>
				      <td>100</td>
				      <td>필수 아님</td>
				    </tr>
				    <tr>
				      <td scope="row">JAVA WEB</td>
				      <td>Warning</td>
				      <td>변수명에 잘못된 prefix 사용</td>
				      <td>10</td>
				      <td>필수 아님</td>
				    </tr>
				  </tbody>
				</table>
				
				<button type="button" class="btn btn-primary my-1" onclick="location.href='/dashboard_detail_list'" style="float:right;">위반결과 리스트</button>
			</div>
			</main>
		
			<footer class="footer mt-auto py-3">
				<div class="container">
					<span class="text-muted">2019 DashBoard Sample</span>
				</div>
			</footer>
			<script>
			var MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
			var color = Chart.helpers.color;
			var barChartData = {
				labels: ['January', 'February', 'March', 'April', 'May', 'June'],
				datasets: [{
					label: 'Blocker',
					backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
					borderColor: window.chartColors.red,
					borderWidth: 1,
					data: [
						10,
						7,
						6,
						4,
						2,
						0
					]
				}, {
					label: 'Critical',
					backgroundColor: color(window.chartColors.yellow).alpha(0.5).rgbString(),
					borderColor: window.chartColors.yellow,
					borderWidth: 1,
					data: [
						100,
						88,
						50,
						34,
						15,
						2
					]
				}, {
					label: 'Urgent',
					backgroundColor: color(window.chartColors.green).alpha(0.5).rgbString(),
					borderColor: window.chartColors.green,
					borderWidth: 1,
					data: [
						400,
						350,
						300,
						250,
						100,
						0
					]
				}, {
					label: 'Important',
					backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
					borderColor: window.chartColors.blue,
					borderWidth: 1,
					data: [
						500,
						400,
						300,
						220,
						150,
						100
					]
				}, {
					label: 'Warning',
					backgroundColor: color(window.chartColors.gray).alpha(0.5).rgbString(),
					borderColor: window.chartColors.gray,
					borderWidth: 1,
					data: [
						200,
						200,
						100,
						50,
						25,
						10
					]
				}
				
				
				]
			};
			window.onload = function() {
				var ctx = document.getElementById('canvas').getContext('2d');
				window.myBar = new Chart(ctx, {
					type: 'bar',
					data: barChartData,
					options: {
						responsive: true,
						legend: {
							position: 'right',
						},
						title: {
							display: true,
							text: '위반파일 기준'
						}
					}
				});
			};
			document.getElementById('randomizeData').addEventListener('click', function() {
				var zero = Math.random() < 0.2 ? true : false;
				barChartData.datasets.forEach(function(dataset) {
					dataset.data = dataset.data.map(function() {
						return zero ? 0.0 : randomScalingFactor();
					});
				});
				window.myBar.update();
			});
			var colorNames = Object.keys(window.chartColors);
			document.getElementById('addDataset').addEventListener('click', function() {
				var colorName = colorNames[barChartData.datasets.length % colorNames.length];
				var dsColor = window.chartColors[colorName];
				var newDataset = {
					label: 'Dataset ' + (barChartData.datasets.length + 1),
					backgroundColor: color(dsColor).alpha(0.5).rgbString(),
					borderColor: dsColor,
					borderWidth: 1,
					data: []
				};
				for (var index = 0; index < barChartData.labels.length; ++index) {
					newDataset.data.push(randomScalingFactor());
				}
				barChartData.datasets.push(newDataset);
				window.myBar.update();
			});
			document.getElementById('addData').addEventListener('click', function() {
				if (barChartData.datasets.length > 0) {
					var month = MONTHS[barChartData.labels.length % MONTHS.length];
					barChartData.labels.push(month);
					for (var index = 0; index < barChartData.datasets.length; ++index) {
						// window.myBar.addData(randomScalingFactor(), index);
						barChartData.datasets[index].data.push(randomScalingFactor());
					}
					window.myBar.update();
				}
			});
			document.getElementById('removeDataset').addEventListener('click', function() {
				barChartData.datasets.pop();
				window.myBar.update();
			});
			document.getElementById('removeData').addEventListener('click', function() {
				barChartData.labels.splice(-1, 1); // remove the label first
				barChartData.datasets.forEach(function(dataset) {
					dataset.data.pop();
				});
				window.myBar.update();
			});
		</script>
		</body>
</html>