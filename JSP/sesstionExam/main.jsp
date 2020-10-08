<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 로그인이 되어 있다면, 아이디, 이름, 이메일을 출력
// 그렇지 않으면 로그인 페이지로 이동하는 링크를 출력

//sesstion 객체에서 가져오기
MemberVO vo = (MemberVO)session.getAttribute("member");

if(vo != null){ // 로그인 상태
%>
	<%=vo.getName() %>님 환영합니다.
	<%=vo.getId() %><br>
	<%=vo.getEmail() %><br>
	<a href='logout.jsp'>로그아웃</a><br>
	<!-- EL을 이용한 세션에서 객체 직접 접근 -->
	${sessionScope.member.name}
	${sessionScope.member.email}
	<!-- 내부적으로 getter 메서드를 활용하여 값을 받아옴 -->
<%
}else{ // 비로그인 상태
%>
	<a href='set.jsp'>로그인</a>
<%
}

%>

</body>
</html>