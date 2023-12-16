<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
 <c:choose>
    <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <c:set var="str">관리자 페이지 입니다.</c:set>
    </c:when>
    <c:when test="${not empty sessionScope.id && sessionScope.grade != 'A'}">
        <c:set var='str'>안녕하세요 ${sessionScope.mname}(${sessionScope.id }) 님!</c:set>
    </c:when>
    <c:otherwise>
        <c:set var="str">기본 페이지 입니다.</c:set>
    </c:otherwise>
</c:choose> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>shop</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/71c72323b0.js" crossorigin="anonymous"></script>
    <style type="text/css">
          #grade{
            color :white;
          }
          
          /* 추가된 부분: 사이드바 스타일 */
          .sidebar {
              width: 280px;
              background-color: #343a40; /* Dark Bootstrap color */
              padding: 20px;
              height: 100vh; /* Full height */
              position: fixed;
              top: 0;
              left: 0;
          }

          /* padding값 변경 */
          .custom-nav-link {
            padding: 0px !important; /* padding을 0으로 설정하며 !important를 사용하여 기존 스타일을 무시 */
          }
  </style>
  
  <script type="text/javascript">
    function getCategory(){
        return fetch("/contents/getCategory")
                        .then(response => response.json());
    }
    window.onload=function(){
          getCategory()
                .then(data => {  
                   console.log(data);
               for (let i = 0; i < data.length; i++) {
                  $('#pmenu').append("<li><a  class='dropdown-item' href='/contents/mainlist/"+data[i].cateno+"'>" + data[i].catename + "</a></li>");
               }                  
                        
                }).catch(console.log);
    };//페이지로딩
    function updateM(){
        var url = "/member/update";
        url += "?id=${dto.id}";
        
        location.href = url;
      }  
  </script>
  </head>
  <body>
    
    <!-- 사이드바 시작 -->
    <div class="sidebar bg-white bg-opacity-50">
      
      <!-- 제목 -->
      <a href="/" class="d-flex align-items-center m-3 me-md-auto text-black text-decoration-none">
          <h1>
            <span class="fs-2">HomePage</span>
          </h1>
      </a>

      <!-- 여기에 원하는 사이드바 메뉴 항목들을 추가하세요 -->
      <ul class="navbar-nav">
        <!-- <li class="nav-item">
          <a class="nav-link" href="/"><i class="fa-solid fa-shirt"></i></a>
        </li>  -->

        <li class="nav-item dropdown mx-3 p-0">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Product</a>
          <ul class="dropdown-menu" id="pmenu" style="position: absolute; z-index: 1;">
  
          </ul>
        </li>

        <li class="nav-item dropdown mx-3">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Community</a>
          <ul class="dropdown-menu" style="position: absolute; z-index: 1;">
            <li><a class="dropdown-item" href="${root}/member/mypage">Mypage</a></li>
            <li><a class="dropdown-item" href="${root}/notice/list">Notice</a></li>
            <!-- <li><a class="dropdown-item" href="#">Q&A</a></li> -->
          </ul>
        </li>
        <li class="nav-item m-3">
          <a class="nav-link text-black" id="grade" href="#"><i class="fa-solid fa-cat"></i> ${str}</a>
        </li>
      </ul>

      <ul class="navbar-nav ms-auto">
        <c:choose>
            <c:when test="${empty sessionScope.id }">
        <li class="nav-item">
            <a href="${root}/member/agree" class="nav-link m-2"><i class="fa-solid fa-user-plus"></i> Sign Up</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/login" class="nav-link m-2 "><i class="fa-solid fa-arrow-right-to-bracket"></i> Login</a>
        </li>
        
        </c:when>
        <c:when test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
        <li class="nav-item">
            <a href="${root}/admin/contents/create" class="nav-link m-2 "><i class="fa-brands fa-shopify"></i> 상품등록</a>
        </li>
        <li class="nav-item">
    		<a href="${root}/contents/list" class="nav-link m-2 "><i class="fa-brands fa-shopify"></i> 상품목록</a>
		</li>
        <li class="nav-item">
            <a href="${root}/admin/member/list" class="nav-link m-2 "><i class="fa-solid fa-user-group"></i> 회원목록</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/logout" class="nav-link m-2 "><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>
        </li>
        </c:when>
        <c:otherwise>
        <li class="nav-item">
           <a href="${root}/member/update/${sessionScope.id}/" class="nav-link m-2 "><i class="fa-solid fa-user-pen"></i> 정보 수정</a>
        </li>
        <li class="nav-item">
            <a href="${root}/member/logout" class="nav-link m-2 "><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</a>
        </li>
         </c:otherwise>
       </c:choose> 
     </ul>
      <div class="dropdown">
          <!-- 여기에 사용자 정보 또는 추가 메뉴를 추가하세요 -->
      </div>
  </div>
</body>