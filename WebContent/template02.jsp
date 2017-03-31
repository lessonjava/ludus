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
<%--bootstrap.cssの読み込み --%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Template</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;"></div>
		</div>




		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
				style="background: #fff;"></div>
		</div>
	</div>

	<%--jQueryの読み込み bootstrap.jsよりさきに読み込まないといけない--%>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<%--bootstrap.jsの読み込み --%>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>