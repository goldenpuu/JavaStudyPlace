<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("name", "홍길동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name : ${name}<br>
파라미터 : ${param.no}<br>
파라미터 : <%=request.getParameter("no") == null ? "" : request.getParameter("no")%>
</body>
</html>
