<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<title>template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="container">
			<div class="row">
				<div class="col-sm-12" style="background: #000;">
					<jsp:include page="header.jsp" /></div>
			</div>

			<div class="row">
				<div class="col-sm-2" style="background: #ddd; height: 750px;">サイドバー</div>
				<div class="col-sm-10" style="background: #ccc; height: 750px;">
					<div class="row">
						<div class="col-sm-12" style="background: #023; height: 750px;">商品画像</div>
					</div>
					<!-- 				<div class="col-sm-4" style="background: #723; height: 750px;">カート入れる</div> -->
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12" style="background: #660; height: 100px;">フッター</div>
			</div>
		</div>
	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>