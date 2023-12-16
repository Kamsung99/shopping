<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
<script>
function list(){
    let url="list";
    url += "?col=${param.col}";
    url += "&word=${param.word}";
    url += "&nowPage=${param.nowPage}";

    location.href=url;
}

function update(noticeno){
    let url="update";
    url += "?col=${param.col}";
    url += "&word=${param.word}";
    url += "&nowPage=${param.nowPage}";
    url += "&noticeno="+noticeno;
    
    location.href=url;
}

function del(noticeno){
    let url="delete";
    url += "?col=${param.col}";
    url += "&word=${param.word}";
    url += "&nowPage=${param.nowPage}";
    url += "&noticeno="+noticeno;

    location.href=url;
}
</script>

</head>
<body>
    
<div class="container mt-3">
    <h2>조회</h2>
    <ul class="list-group">
        <li class="list-group-item">작성자: ${dto.id}</li>
        <li class="list-group-item">제 목: ${dto.title}</li>
        <li class="list-group-item" style="height:350px;overflow-y:scroll">${dto.content}</li>
        <li class="list-group-item">등록날짜: ${dto.rdate}</li>
        <li class="list-group-item">조회수: ${dto.cnt}</li>
    </ul>

    <br>

    <c:if test="${sessionScope.grade == 'A'}">
        <button type="button" class="btn btn-success" onclick="location.href='create'">생성</button>
        <button type="button" class="btn btn-success" onclick="javascript:update('${dto.noticeno}')">수정</button>
        <button type="button" class="btn btn-success" onclick="javascript:del('${dto.noticeno}')">삭제</button>
    </c:if>
    <button type="button" class="btn btn-success" onclick="javascript:list()">목록</button>

</div>

</body>
</html>

