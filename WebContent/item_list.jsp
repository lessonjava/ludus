<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<title>商品一覧</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--共通cssの読み込み --%>
<link rel="stylesheet" href="./css/main.css">
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
						<div class="col-sm-12" style="background: #023; height: 750px;">商品画像

<h3><a href=item_detail.jsp>商品詳細へ</a></h3>

						</div>

					</div>
					<!-- 				<div class="col-sm-4" style="background: #723; height: 750px;">カート入れる</div> -->

				</div>
			</div>

			<div class="row">
				<div class="col-sm-12" style="background: #660; height: 100px;">フッター</div>
			</div>
		</div>
	</div>

</body>
</html>