<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<title>商品一覧</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--jQueryの読み込み--%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
</head>
<body>


	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>


		<div class="row">
			<div class="col-sm-2" style="background: #ddd; height: 750px;">サイドバー</div>
			<div class="col-sm-10" style="background: #ccc; height: 750px;">

				<div class="row">
					<div class="col-xs-12 col-sm-12">
						<div id="itemlist">
							<h1>商品一覧画面</h1>
							<h3>${itemGenre}</h3>
							<hr>
						</div>

						<s:iterator value="displayList">
							<div class="col-xs-12 col-sm-2">
								<a
									href="<s:url action="GoItemDetailAction"><s:param name="id" value="%{itemId}"/></s:url>">
									<img src="img/Product/<s:property value="itemImg01"/>"
									height="200" />
								</a>
								<s:property value="itemName" />
								<fmt:formatNumber value="${price}" />
							</div>
						</s:iterator>


						<h3>
							<a href=item_detail.jsp>商品詳細へ</a>
						</h3>
					</div>
				</div>
				<!-- 				<div class="col-sm-4" style="background: #723; height: 750px;">カート入れる</div> -->
			</div>
		</div>

		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
				style="background: #fff;">
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