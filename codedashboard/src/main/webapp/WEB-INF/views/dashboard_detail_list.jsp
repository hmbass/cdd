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
				<div style="text-align:center;">
				<h3 class="h3 my-3 text-gray-800">소스코드 점검결과</h1>
				</div>
				<button type="button" class="btn btn-primary my-1" onclick="location.href='/dashboard_detail'" style="float:right;">이전으로</button>
				<h6 class="h6 my-3 text-gray-800">시스템명 : CodeEyes</h6>
				<table class="table table-bordered">
				  <thead>
				    <tr>
				      <th scope="row">소스경로</th>
				      <th>파일명</th>
				      <th>위반라인</th>
				      <th>룰명</th>
				      <th>룰 등급</th>
				    </tr>
				  </thead>
				  <tbody>				   
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>logicalmedical.java</td>
				      <td>39</td>
				      <td>Loop의 마지막 구문에 Break / Continue 사용 금지</td>
				      <td>Critical</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>CodeLogical.java</td>
				      <td>53</td>
				      <td>Loop의 마지막 구문에 Break / Continue 사용 금지</td>
				      <td>Critical</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>Location1.java</td>
				      <td>103</td>
				      <td>"0"으로 시작하는 정수 사용 금지</td>
				      <td>Important</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>Location2.java</td>
				      <td>134</td>
				      <td>"0"으로 시작하는 정수 사용 금지</td>
				      <td>Important</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>Location3.java</td>
				      <td>22</td>
				      <td>"0"으로 시작하는 정수 사용 금지</td>
				      <td>Important</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>Location4.java</td>
				      <td>233</td>
				      <td>"0"으로 시작하는 정수 사용 금지</td>
				      <td>Important</td>
				    </tr> 
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>FileHandler.java</td>
				      <td>33</td>
				      <td>변수명에 잘못된 prefix 사용</td>
				      <td>Warning</td>
				    </tr>
				    <tr>
				      <td scope="row">/Webcontent/myapp/</td>
				      <td>FileHandler3.java</td>
				      <td>43</td>
				      <td>변수명에 잘못된 prefix 사용</td>
				      <td>Warning</td>
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