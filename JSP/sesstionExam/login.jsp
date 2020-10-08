<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 아이디가 hong이고, 비밀번호가 1234이면 "로그인되었습니다."
// 그렇지 않으면 "아이디 비밀번호를 확인하세요 출력"

String id = request.getParameter("id");
String password = request.getParameter("password");

if("hong".equals(id) && "1234".equals(password)){
	MemberVO mv = new MemberVO();
	mv.setId(id);
	mv.setName("홍길동");
	mv.setEmail("hong@gmail.com");
	//session에 저장
	session.setAttribute("member", mv);
	
	out.print("<script>alert('로그인 되었습니다.1');</script>");
	
	%>
	<script>
		alert("로그인 되었습니다.2");
		location.href='main.jsp';
	</script>
	<jsp:forward page="main.jsp"></jsp:forward>
	<%
}else{
	%>
	<script>
		alert("아이디와 비밀번호를 확인해주세요.");
		location.href='set.jsp';
	</script>
	<%	
}
%>
</body>
</html>