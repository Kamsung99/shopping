<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>장바구니</title>
  <meta charset="utf-8">
  <!-- 필요한 스타일 및 스크립트 추가 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style type="text/css">
    /* 스타일 추가 */
    body {
      /* ... */
    }
    /* ... */
  </style>
</head>
<body>
  <!-- 장바구니 테이블 - 상품 목록 표시 -->
  <div class="orderListArea ec-base-table typeList gBorder">
    <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-">
      <!-- ... 테이블 헤더 ... -->
      <tbody class="xans-element- xans-order xans-order-list center">
        <c:forEach var="item" items="${cartItems}">
          <tr class="xans-record-">
            <!-- 각 상품 정보 표시 -->
            <td><input type="checkbox" id="basket_chk_id_${item.id}" name="basket_product_normal_type_normal"></td>
            <td class="thumb gClearLine"><a href="/product/detail.html?product_no=${item.id}&amp;cate_no=24"><img src="${item.imageUrl}" alt="${item.title}"></a></td>
            <!-- ... 상품 정보 표시 ... -->
            <td><span class="ec-base-qty"><input id="quantity_id_${item.id}" name="quantity_name_${item.id}" size="2" value="${item.quantity}" type="text"></span></td>
            <td><span class="">${item.mileage}</span></td>
            <!-- ... 더 많은 상품 정보 표시 ... -->
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <!-- 총 주문금액 및 주문 버튼 -->
    <div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total">
      <table border="1" summary="">
        <!-- ... 총 주문금액 정보 ... -->
      </table>
      <!-- 주문 버튼 -->
      <div class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
        <div class="artfinger_button_basket_allorder ">
          <a href="#none" onclick="Basket.orderAll(this)" class="" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html">전체상품주문</a>
        </div>
        <!-- ... 다른 주문 버튼들 ... -->
      </div>
    </div>
  </div>
  
  <!-- 필요한 스크립트 추가 -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <!-- ... 페이지에서 사용된 다양한 스크립트 ... -->
  <script>
    // 페이지에서 사용된 JavaScript 코드
    // ...
  </script>
</body>
</html>
