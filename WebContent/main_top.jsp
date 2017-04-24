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
<%--jQueryの読み込み--%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<title>トップページ</title>
</head>
<body>
	<div class="container">
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
							<img src="./img/m02.jpg" alt="hogehoge">
							<div class="carousel-caption">
								<h3><!-- マカロン --></h3>
								<p><!-- コメント入れられるよ --></p>
							</div>
						</div>
						<div class="item">
							<img src="./img/m01.jpg" alt="hogehoge">
							<div class="carousel-caption">
								<h3><!-- ドーナツ --></h3>
								<p><!-- コメント入れられるよ --></p>
							</div>
						</div>
						<div class="item">
							<img src="./img/m03.jpg" alt="hugahuga">
							<div class="carousel-caption">
								<h3><!--チョコ --></h3>
								<p><!-- コメント入れられるよ --></p>
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

		<div class="text-center">
			<h3>
				<span class="label label-danger">MENU</span>
			</h3>
			<br>
			<div class="row">
				<div class="col-xs-6 col-sm-4">
					<img src="./img/macaron01.jpg" class="img-responsive"
						style="width: 100%" alt="Image">
					<p>マカロン</p>
				</div>
				<div class="col-xs-6 col-sm-4">
					<img src="./img/Brownie.jpg" class="img-responsive"
						style="width: 100%" alt="Image">
					<p>ブラウニー</p>
				</div>

				<div class="col-xs-12 col-sm-4">
		<div class="box1"><!--box1開始タグ -->
			<div class="twitter"><!-- ツイッタータグ -->
				<a class="twitter-timeline"	href="https://twitter.com/internousdev" data-widget-id="671917266686971905">@internousdevさんのツイート</a>
					<script>
						!function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
									.test(d.location) ? 'http' : 'https';
							if (!d.getElementById(id)) {
								js = d.createElement(s);
								js.id = id;
								js.src = p
										+ "://platform.twitter.com/widgets.js";
								fjs.parentNode.insertBefore(js, fjs);
							}
						}(document, "script", "twitter-wjs");
					</script>
			</div><!-- ツイッター終了タグ -->
				</div><!--box1の終了タグ -->
				</div>

<%-- 				<div class="col-xs-12 col-sm-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title text-left">
								<span class="label label-default">お知らせ</span>
							</h4>
						</div>
						<div class="panel-body">逆巻く風邪 波動拳 昇竜拳 竜巻旋風脚 真空波動拳</div>
					</div>
				</div> --%>

			</div>
		</div>
	</div>

	<%--フッター(ただの文字　未完成) --%>
	<div class="row">
		<div class="col-xs-12 col-sm-12 text-center" style="background: #fff;">
			<p id="pageTop">
				<a href="#">⇧</a>
			</p>
			<hr class="style-one">
			<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
		</div>
	</div>
	<%--フッター --%>
	</div>

</body>
</html>