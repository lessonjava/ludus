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
<%--bootstrapの読み込み --%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Template</title>
</head>
<body>
	<div class="container" >
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12" style="background: #fff;">
				<jsp:include page="header.jsp" /><div id="carousel-mainContents"
					class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-mainContents" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-mainContents" data-slide-to="1"></li>
						<li data-target="#carousel-mainContents" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="./img/m01.jpg" alt="hogehoge">
							<div class="carousel-caption">
								<h3>亀有</h3>
								<p>コメント</p>
							</div>
						</div>
						<div class="item">
							<img src="./img/m02.jpg" alt="hogehoge">
							<div class="carousel-caption">
								<h3>西新井</h3>
								<p>いいいいい</p>
							</div>
						</div>
						<div class="item">
							<img src="./img/m03.jpg" alt="hugahuga">
							<div class="carousel-caption">
								<h3>北千住</h3>
								<p>あああああ</p>
							</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-mainContents"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-mainContents"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</div>
		</div>
		<%--ヘッダー --%>


		<div class="row">
			<div class="col-xs-8 col-sm-8 col-xs-offset-2" style="background: #fff;">
				<div class="table-responsive">
					<table class="table table-hover table-bordered">
						<tbody>
							<tr>
								<th class="info">名前</th>
								<td>山田</td>

							</tr>
							<tr>
								<th class="info">メールアドレス</th>
								<td>aaaaa</td>

							</tr>
							<tr>
								<th class="info">郵便番号</th>
								<td>000-0000</td>
							</tr>
							<tr>
								<th class="info">住所</th>
								<td>東京都aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>

							</tr>
							<tr>
								<th class="info">電話番号</th>
								<td>000-0000-0000</td>

							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>


		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
				style="background: #fff;">
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要　　利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</body>
</html>