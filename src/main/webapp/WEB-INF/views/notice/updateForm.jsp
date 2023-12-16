<%@ page contentType="text/html; charset=UTF-8" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <body>

<!--내용-->
<div class="container mt-3">
    <h2>공지 수정</h2>
    <form action="update"
        method="post">
        <input type="hidden" name="noticeno" value="${dto.noticeno}">
        <input type="hidden" name="col" value="${param.col}">
        <input type="hidden" name="word" value="${param.word}">
        <input type="hidden" name="nowPage" value="${param.nowPage}">
        <div class="mb-3 mt-3">
        <label for="id" class="form-label">작성자:</label>
        <input type="text" class="form-control" id="id" value="${dto.id}" name="id">
        </div>

        <div class="mb-3 mt-3">
            <label for="title" class="form-label">제목:</label>
            <input type="text" class="form-control" id="title" value="${dto.title}" name="title">
        </div>

        <div class="mb-3 mt-3">
            <label for="content">내용:</label>
            <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>