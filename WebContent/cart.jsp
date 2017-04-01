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
<title>カート</title>
</head>
<body>
	<div class="container">
		<%--　ヘッダー --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12" style="background: #fff;">
				<jsp:include page="header.jsp" /></div>
		</div>
		<%--ヘッダー --%>
<div id="item">
<h1>カート画面</h1>

<table align="center" >
<tr>
<td >
<img src="img/item_sample1.jpg"  width="200px" height="150px"/>
</td>
<td >
<p>サンダーソウルスリム 攻めタチウオ</p>
</td>
<td >
<form>
<p>
数量：<select name="suu">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</p>
<input type="submit" value="削除">
</form>

</td>
<td>
￥36,800
</td>
</tr>
</table>
<br>
<h2><a href=settlement.jsp>購入する</a></h2>
<br>
<br>
<br>
<br>
<br>
<br>
<a href=main_top.jsp>TOPへ戻る</a>
</div>
<hr>

		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-lg-12 text-center"
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