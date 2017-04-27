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
<link rel="stylesheet" href="./css/settlement.css">
<link rel="stylesheet" href="./css/main.css">
<%--共通jsの読み込み --%>
<script src="./js/main.js"></script>
<title>注文情報確認画面</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>
<div id="settlement">

<h1>入力情報の確認</h1>


<h3>商品お届け先</h3>
<s:property value="%{shippingAddress}" />
<h3>購入予定の商品</h3>
<s:property value="%{itemName}" />
<h3>商品の合計個数</h3>
 <h3 style="white-space: normal;"><s:property value="itemName"/></h3>
<h3>合計支払金額</h3>
<fmt:formatNumber value="${payment}" pattern="###,###,###"/>円(税込)

<br>
<br>
<br>
	<s:form action="CartInsertAction">
		<button type="submit" class="btn btn-primary center-block">カートに戻る</button>
	</s:form>
<br>
                <s:form action="SettlementAction">
                    <s:hidden name="creditNumber" value="%{creditNumber}" />
                    <s:hidden name="creditBrand" value="%{creditBrand}" />
                    <s:hidden name="securityCode" value="%{securityCode}" />
                    <s:hidden name="shippingAddress" value="%{shippingAddress}" />
                    <button type="submit" class="btn btn-primary center-block">購入確定</button>
                </s:form>
<br>
<a href=main_top.jsp>TOPへ戻る</a>

<hr>
</div>
		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
				style="background: #fff;">
				<p id="pageTop"><a href="#">⇧</a></p>
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
			</div>
		</div>
		<%--フッター --%>
	</div>

</body>
</html>