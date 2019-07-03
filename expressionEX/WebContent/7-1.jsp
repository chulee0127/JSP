<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- 1부터 1000까지 홀수들의 합 --%>
<%
int sum = 0;
for(int cnt = 1; cnt <= 1000; cnt++)
	if(cnt % 2 == 1){
		sum += cnt;
	}

pageContext.setAttribute("RESULT", new Integer(sum));
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1부터 1000까지 홀수들의 합</title>
</head>
<body>
1부터 1000까지 홀수의 합은? <BR>
정답 : ${RESULT}
</body>
</html>