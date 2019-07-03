<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>익스프레션 언어 연산자 연습</title>
</head>

<body>
X = ${param.NUM1}, Y = ${param.NUM2} <BR><BR>
X + Y = ${param.NUM1 + param.NUM2} <BR> <%-- 덧셈 연산 --%>
X - Y = ${param.NUM1 - param.NUM2} <BR> <%-- 뺄셈 연산 --%>
X * Y = ${param.NUM1 * param.NUM2} <BR> <%-- 곱셈 연산 --%>
X / Y = ${param.NUM1 / param.NUM2} <BR> <%--  --%>
X % Y = ${param.NUM1 % param.NUM2} <BR><BR> <%-- 나눗셈 연산 --%>
X가 더 큽니까? ${param.NUM1 - param.NUM2 > 0} <BR> <%-- 비교 연산 --%>
Y가 더 큽니까? ${param.NUM1 - param.NUM2 < 0} <BR><BR> <%-- 비교 연산 --%>
X와 Y가 모두 양수입니까 ${(param.NUM1 > 0) && (param.NUM2) > 0} <BR><BR> <%-- 조건 연산 --%>
X와 Y가 같습니까? ${param.NUM1 == param.NUM2? "예" : "아니오"} <BR><BR> <%-- 비교 연산 --%>
</body>
</html>