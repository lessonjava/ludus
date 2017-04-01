<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<title>商品詳細</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--jQueryの読み込み--%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<%--個別cssの読み込み --%>
<link rel="stylesheet" href="./css/item.css">
<%--個別jsの読み込み --%>
<script src="js/item.js"></script>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>

		<div class="row">

			<div class="col-xs-12 col-lg-9"
				style="background: url(./img/back.jpg);">
				<div id="content">
					<div id="featured_img">
						<img id="img"
							src="//www.imamura.biz/blog/wp-content/uploads/image01.png">
					</div>
					<div id="thumb_img" class="cf">
						<img class="active"
							src="//www.imamura.biz/blog/wp-content/uploads/image01_thumb.png"
							onclick="changeimg('//www.imamura.biz/blog/wp-content/uploads/image01.png',this);">
						<img
							src="//www.imamura.biz/blog/wp-content/uploads/image02_thumb.png"
							onclick="changeimg('//www.imamura.biz/blog/wp-content/uploads/image02.png',this);">
						<img
							src="//www.imamura.biz/blog/wp-content/uploads/image03_thumb.png"
							onclick="changeimg('//www.imamura.biz/blog/wp-content/uploads/image03.png',this);">
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-lg-3"
				style="background: url(./img/back.jpg); height: auto; margin: 3rem auto;">
				<div class="panel panel-default">
					<div class="panel-heading" style="height: auto;">
						<h4 style="word-wrap: break-word;">
							商品名ssergggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg</h4>
					</div>

					<div class="panel-body bg-success" style="height: auto;">
						<h4>￥5000円</h4>
						<p>残り25点</p>
						<br> <br> <br>
						<form class="form-inline">
							<div class="form-group ">
								<label>数量:</label> <select class="form-control input-sm">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
								</select>
							</div>
							<div class="text-center" style="padding: 30px;">
								<button type="button" onClick="location.href='cart.jsp'"
									class="btn btn-primary center-block btn-lg btn-block">カートに入れる</button>
							</div>
						</form>

					</div>
				</div>
			</div>

			<div class="col-xs-12 col-lg-12"
				style="background: #fff; height: 200px;">
				<div class="panel panel-info" style="height: 200px;">
					<div class="panel-heading">
						<h3>商品の説明</h3>
					</div>
					<div class="panel-body">パネル内容</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
				style="background: #fff;">
				<p id="pageTop"><a href="#">⇧</a></p>
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
			</div>
		</div>
	</div>


</body>
</html>