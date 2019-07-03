<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이 러브 펫</title>
</head>

<body>
아이디 : ${param.ID} <BR>
선택한 동물 : ${paramValues.ANIMAL[0]}
          ${paramValues.ANIMAL[1]}
          ${paramValues.ANIMAL[2]}
          ${paramValues.ANIMAL[3]}
</body>
</html>