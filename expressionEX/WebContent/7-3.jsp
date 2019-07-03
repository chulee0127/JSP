<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이 러브 펫</title>
</head>

<body>
<form ACTION = 7-4.jsp>
아이디 : <INPUT TYPE = TEXT NAME = ID> <BR><BR>
다음 중 회원님이 키우고 있는 애완동물을 선택하세요<BR><BR>
개 <INPUT TYPE = CHECKBOX NAME = ANIMAL VALUE = "개">
고양이 <INPUT TYPE = CHECKBOX NAME = ANIMAL VALUE = "고양이">
금붕어 <INPUT TYPE = CHECKBOX NAME = ANIMAL VALUE = "금붕어">
없음 <INPUT TYPE = CHECKBOX NAME = ANIMAL VALUE = "키우고 있지 않음"> <BR><BR> <%-- 내가 추가한 선택지 --%>

<INPUT TYPE = RESET VALUE = "취소">
<INPUT TYPE = SUBMIT VALUE = "확인">
</form>
</body>

</html>