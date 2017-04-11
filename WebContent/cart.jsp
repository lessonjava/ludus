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
<link rel="stylesheet" href="./css/item.css">

<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<script src="js/cart.js"></script>
<title>カート</title>
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

			<s:if test="msg.size()>0">
				<div class="col-xs-12">
					<div class="panel panel-warning">
						<div class="panel-heading">お知らせ</div>
						<div class="panel-body">
							<s:iterator value="msg">・商品名 「<s:property />」 は在庫0になったためカートから削除されました。<br>
							</s:iterator>
						</div>
					</div>
				</div>
			</s:if>
			<div class="col-xs-12">
				<h1>カート画面</h1>
			</div>

			<div class="col-xs-12 col-sm-9">
				<s:iterator value="cartList">
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-condensed ">
							<thead>
								<tr class="info">
									<th>商品画像</th>
									<th>商品名</th>
									<th>価格</th>
									<th class="text-right">数量</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td
										style="height: 90px; width: 150px; min-height: 90px; min-width: 150px;"><img
										src="./img/Product/<s:property value="itemImg01"/>"
										class="img-responsive" alt=""
										style="height: 113px; width: 150px; min-height: 113px; min-width: 150px;"></td>
									<td><s:property value="itemName" /><br> <br> <br>
										<br> <s:form action="CartDeleteAction">
											<s:hidden name="userId" value="%{userId}" />
											<s:hidden name="itemId" value="%{itemId}" />
											<button type="submit" class="btn btn-default">削除</button>
										</s:form>
									<td style="height: 100px; width: 120px;"><fmt:formatNumber
											value="${subtotal}" />円</td>
									<td style="height: 100px; width: 120px;">

										<div class="form-inline form-group center-block">
											<s:form action="CartInsertAction">
												<s:hidden name="itemId" value="%{itemId}" />
												<input type="button" class="btn btn-default" value="-"
													onclick="minus('${itemId}')" />
												<div class="form-group">
													<input name="orderNumber"
														style="height: 30px; width: 30px; padding: 5px;"
														id="${itemId}" type="text" class="form-control"
														value="${orderCount}" maxlength="2" pattern="[0-9]*" />
												</div>
												<input type="button" class="btn btn-default " value="+"
													onclick="plus('${itemId}')" />
												<button type="submit" class="btn btn-primary center-block">更新する</button>
											</s:form>
										</div>

									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</s:iterator>
			</div>

			<div class="col-xs-12 col-sm-3">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3>
							小計(${order}点): ￥
							<fmt:formatNumber value="${payment}" />
						</h3>
					</div>

					<div class="panel-body">
						<s:form action="GoSettlementAction">
							<button type="submit" class="btn btn-primary center-block">購入する</button>
						</s:form>

					</div>
				</div>
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