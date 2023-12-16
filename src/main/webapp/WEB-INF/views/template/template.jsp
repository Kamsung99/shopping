<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"/></title>

<style>
    #contextForm {
        margin-left: <tiles:getAsString name = 'base_css'/>;
        
    }
</style>
<!-- <c:set var="baseCss" value="<tiles:getAsString name='base_css'/>" /> -->
<!-- <link rel="stylesheet" href="<tiles:getAsString name = 'base_css'/>" /> -->
</head>
<body>
 
<!-- 상단 메뉴 -->
<tiles:insertAttribute name="header"/>
<!-- 상단 메뉴 끝 -->

<!-- 내용 시작 -->
<div id='contextForm'>
    <tiles:insertAttribute name="body"/>
</div>
<!-- 내용 끝 -->
 
</body>
</html>