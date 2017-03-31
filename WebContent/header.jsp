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
<%--個別cssの読み込み --%>
<link rel="stylesheet" href=" ./css/header.css">
<%--bootstrapの読み込み --%>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>header</title>
</head>
<body>

	<nav class="navbar navbar-inverse  all" role="navigation">
		<div class="container-fuild">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="./img/ludus.jpg"
					alt="hogehoge" class="img-responsive"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="">HOME</a></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">商品<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="">アクション</a></li>
							<li><a href="">RPG</a></li>
							<li><a href="">シュミレーション</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="">One more separated link</a></li>
						</ul></li>
					<li><a href="">お問い合わせ</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">ようこそ！！太郎さん <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="">マイページ</a></li>
							<li><a href="">購入履歴</a></li>
							<li><a href="">お気に入り</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="">ログアウト</a></li>
						</ul></li>
					<li><a href="">カート</a></li>
				</ul>
				<form class="navbar-form navbar-right" style="padding: 15px 0;">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">検索</button>
				</form>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>