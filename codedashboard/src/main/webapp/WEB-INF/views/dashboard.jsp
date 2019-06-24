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
	   </head>
	   <body class="d-flex flex-column h-100" style="background-color: #f8f9fc;">
			<!-- Begin page content -->
			<main role="main" class="flex-shrink-0">
			<div class="container">
				<h1 class="h3 my-3 text-gray-800">DashBoard Sample</h1>
				<div class="row">
					<div class="col-sm-7">점검 시스템 수 : 100</div>
					<div class="col-sm-5">
						<div style="float: right">
							<a href="#" class="btn btn-success btn-icon-split btn-sm mx-2">
								<span class="icon text-white-100"> <i class="fas fa-check"></i>
							</span> <span class="text">80 </span>
							</a> <a href="#" class="btn btn-yellow btn-icon-split btn-sm mx-2">
								<span class="icon text-white-100"> <i
									class="fas fa-exclamation"></i>
							</span> <span class="text">10 </span>
							</a> <a href="#" class="btn btn-warning btn-icon-split btn-sm mx-2">
								<span class="icon text-white-100"> <i class="fas fa-bomb"></i>
							</span> <span class="text">6 </span>
							</a> <a href="#" class="btn btn-danger btn-icon-split btn-sm mx-2">
								<span class="icon text-white-100"> <i class="fas fa-times"></i>
							</span> <span class="text">4 </span>
							</a>
						</div>
					</div>
				</div>
		
				<div class="card my-3 py-1">
					<div class="card-body">
						<form class="form-inline">
							<label class="my-1 ml-5 mr-2" for="inlineFormCustomSelectPref">본부명</label>
							<select class="custom-select my-1 ml-2 mr-sm-2"
								id="inlineFormCustomSelectPref">
								<option selected>선택해주세요...</option>
								<option value="1">고객서비스본부</option>
								<option value="2">경영서비스본부</option>
								<option value="3">플랫폼서비스본부</option>
								<option value="4">서비스수행본부</option>
							</select> <label class="my-1 ml-5 mr-2" for="inlineFormCustomSelectPref">팀명</label>
							<select class="custom-select my-1 ml-2 mr-sm-2"
								id="inlineFormCustomSelectPref">
								<option selected>선택해주세요...</option>
								<option value="1">Quality Assurance</option>
							</select> <label class="my-1 ml-5 mr-2" for="inlineFormCustomSelectPref">시스템명</label>
							<select class="custom-select my-1 ml-2 mr-sm-2"
								id="inlineFormCustomSelectPref">
								<option selected>선택해주세요...</option>
								<option value="1">CodeEyes</option>
							</select>
							<button type="submit" class="btn btn-primary my-1 ml-5 px-5">
								<i class="fas fa-search"></i>검색
							</button>
						</form>
					</div>
				</div>
		
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">본부</th>
							<th scope="col">팀</th>
							<th scope="col">시스템명</th>
							<th scope="col">소스현황</th>
							<th scope="col">준수률</th>
							<th scope="col">Empty Code</th>
							<th scope="col">위험잠재 현황</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">경영서비스본부</th>
							<td>커뮤니케이션정보팀</td>
							<td>KT그룹소통포털</td>
							<td>100</td>
							<td><a href="#" class="btn btn-success btn-circle btn-sm"></a>
								90%</td>
							<td>10</td>
							<td>2</td>
						</tr>
						<tr>
							<th scope="row">경영서비스본부</th>
							<td>커뮤니케이션정보팀</td>
							<td>KT메신저</td>
							<td>200</td>
							<td><a href="#" class="btn btn-success btn-circle btn-sm"></a>
								80%</td>
							<td>15</td>
							<td>5</td>
						</tr>
						<tr>
							<th scope="row">경영서비스본부</th>
							<td>커뮤니케이션정보팀</td>
							<td>KT화상회의</td>
							<td>300</td>
							<td><a href="#" class="btn btn-yellow btn-circle btn-sm"></a>
								70%</td>
							<td>2</td>
							<td>3</td>
						</tr>
						<tr>
							<th scope="row">서비스수행본부</th>
							<td>Quality Assurance팀</td>
							<td>ITSM</td>
							<td>400</td>
							<td><a href="#" class="btn btn-warning btn-circle btn-sm"></a>
								60%</td>
							<td>6</td>
							<td>7</td>
						</tr>
						<tr>
							<th scope="row">서비스수행본부</th>
							<td>Quality Assurance팀</td>
							<td><a href="/dashboard_detail">CodeEyes</a></td>
							<td>500</td>
							<td><a href="#" class="btn btn-danger btn-circle btn-sm"></a>
								40%</td>
							<td>23</td>
							<td>1</td>
						</tr>
					</tbody>
				</table>
		
			</div>
			</main>
		
			<footer class="footer mt-auto py-3">
				<div class="container">
					<span class="text-muted">2019 DashBoard Sample</span>
				</div>
			</footer>
		</body>
</html>