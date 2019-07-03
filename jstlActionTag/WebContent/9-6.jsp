<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String arr[] = {"불고기 백반", "오므라이스", "콩국수"};
request.setAttribute("MENU", arr);
%>
<jsp:forward page = "LunchMenuView.jsp"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구내 식당</title>
</head>

<body>
<H3> 오늘의 점심 메뉴입니다.</H3>
<UL>
<c:forEach var = "dish" items = "${MENU}">
<LI>${dish}</LI>
</c:forEach>
</UL>
</body>
</html>