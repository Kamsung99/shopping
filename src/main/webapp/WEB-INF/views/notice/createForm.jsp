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
    <h2>공지 생성</h2>
    <form action="create"
        method="post">
        <div class="mb-3 mt-3">
        <label for="id" class="form-label">작성자:</label>
        <input type="text" class="form-control" id="id" placeholder="Enter id" name="id" value="${sessionScope.id}">
        </div>

        <div class="mb-3 mt-3">
            <label for="title" class="form-label">제목:</label>
            <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
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