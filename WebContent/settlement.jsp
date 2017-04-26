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
<title>Template</title>
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

<h1>決済情報入力画面</h1>

  <s:form action="SettlementConfirmationAction">
    <table>
      <tr>
        <th>クレジットカード選択</th>
          <td><label> <input type="radio" name="creditBrand" value="1" required>visa
              </label> <label> <input type="radio" name="creditBrand" value="2">MasterCard
              </label> <label> <input type="radio" name="creditBrand" value="3">AmericanExpress
              </label>
          </td>
      </tr>
      <tr>
        <th>カード番号</th>
          <td><input type="text" name="creditNumber" maxlength="16" pattern="^([0-9]{15,16})$"
                  title="input type="text" name="lang.settlement.validation1" />
          </td>
        </tr>
      <tr>
         <th>カード名義人</th>
            <td><input type="text" name="nameE" maxlength="40"required></td>
      </tr>
      <tr>
         <th>有効期限</th>
            <td><select name="expirationMonth"  required>
                  <option value="">月</option>
                  <option value="01">1</option>
                  <option value="02">2</option>
                  <option value="03">3</option>
                  <option value="04">4</option>
                  <option value="05">5</option>
                  <option value="06">6</option>
                  <option value="07">7</option>
                  <option value="08">8</option>
                  <option value="09">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <select name="expirationYear" required>
                  <option value="">年</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
                  <option value="21">21</option>
                  <option value="22">22</option>
                  <option value="23">23</option>
                  <option value="24">24</option>
                </select>
            </td>
      </tr>
      <tr>
        <th>セキュリティカード</th>
        <td><input type="text" name="securityCode" maxlength="4" pattern="^([0-9]{3,4})$"required>
        </td>
      </tr>
      <tr>
        <th>お届け先住所</th>
        <td><input type="text" name="shippingAddress" maxlength="60"  required></td>
        </tr>
   </table>
        <input type="submit" value="入力を確定する" />
  </s:form>
<h2><a href=settlement_confirmation.jsp>入力確定</a></h2>
<br>
<br>
<br>
<br>
<br>
<br>
<a href=main_top.jsp>TOPへ戻る</a>

<hr>

		<%--フッター(ただの文字　未完成) --%>
		<div class="row">
			<div class="col-xs-12 col-sm-12 text-center"
				style="background: #fff;">
				<p id="pageTop"><a href="#">⇧</a></p>
				<hr class="style-one">
				<h1 style="margin: 3rem auto;">会社概要 利用規約</h1>
			</div>
		</div>
		</div>
		<%--フッター --%>
	</div>

</body>
</html>