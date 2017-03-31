<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<%--jQueryの読み込み bootstrapよりさきに読み込まないといけない--%>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<%--bootstrapの読み込み --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Template</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>




		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
				style="background: #fff;">
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要　　利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>