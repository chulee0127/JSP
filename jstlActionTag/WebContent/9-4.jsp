<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인사하기</title>
</head>

<body>
<c:choose>

<c:when test = "${param.NUM == 0}">
처음 뵙겠습니다.<BR>
</c:when>

<c:when test = "${param.NUM == 1}">
반갑습니다.<BR>
</c:when>

<c:otherwise>
안녕하세요.<BR>
</c:otherwise>

</c:choose>
</body>
</html>