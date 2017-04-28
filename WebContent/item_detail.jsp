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
			<s:iterator value="itemList">

				<div class="col-xs-12 col-sm-9"
					style="background: #fff; margin-right: -30px;">
					<div id="content">

						<div id="featured_img">
							<img id="img"
								style="height: 350px; width: 400px; min-height: 100px; min-width: 150px;"
								src="./img/Product/<s:property value="itemImg01"/>">
						</div>
<%--画像3つもないよ！	<div id="thumb_img" class="cf">
							<img class="active"
								src="./img/Product/<s:property value="itemImg01"/>" width="142"
								onclick="changeimg('./img/Product/<s:property value="itemImg01"/>',this);">
							<img src="./img/Product/<s:property value="itemImg02"/>"
								width="142"
								onclick="changeimg('./img/Product/<s:property value="itemImg02"/>',this);">
							<img src="./img/Product/<s:property value="itemImg03"/>"
								width="142"
								onclick="changeimg('./img/Product/<s:property value="itemImg03"/>',this);">
						</div> --%>
					</div>
				</div>

				<div class="col-xs-12 col-sm-3"
					style="background: #fff; height: auto; margin: 3rem auto; margin-left: -15px;">
					<div class="panel panel-default">
						<div class="panel-heading" style="height: auto;">
							<h4 style="word-wrap: break-word;">
								<s:property value="itemName" />
							</h4>
						</div>

						<div class="panel-body bg-success" style="height: auto;">
							<div class="col-xs-12 col-sm-12">
								<h4>
									<fmt:formatNumber value="${price}" />
									円
								</h4>
							</div>
							<div class="col-xs-12 col-sm-12">
							<s:if test="stock==0"><p>在庫なし</p></s:if>
							<s:elseif test="stock<10"><p>残り${stock}個</p></s:elseif>
							<s:else>在庫あり</s:else>
							</div>

							<s:form action="CartInsertAction">
								<s:hidden name="itemId" value="%{itemId}" />
								<s:hidden name="orderNumber" value="1" />
								<s:hidden name="detail" value="true" />
								<div class="text-center" style="padding: 50px 0 0 0;">
									<button type="submit" <s:if test="stock<=0">disabled</s:if>
										class="btn btn-primary center-block btn-lg btn-block">カートに入れる</button>
								</div>
							</s:form>

						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-12"
					style="background: #fff; height: 200px;">
					<div class="panel panel-info" style="height: 200px;">
						<div class="panel-heading">
							<h3>商品の説明</h3>
						</div>
						<div class="panel-body">

							<p>
								<s:property value="itemCatch" />
								<br>
								<s:property value="itemDetail" />
							</p>

						</div>
					</div>
				</div>
			</s:iterator>
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