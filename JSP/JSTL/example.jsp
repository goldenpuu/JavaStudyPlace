<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 코어 태그 라이브러리를 불러오기 위해 디렉티브 추가 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "member.MemberVO" %>
<%@ page import = "java.util.*" %>
<c:set var="name" value="홍길동"/>
<c:set var="id">hong</c:set>
<c:set var="name2" value="${name}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// <c:set>
// 변수에 값을 저장할 때 사용
// <c:set var="변수명" value="값"/>
// <c:set var="변수명">값</c:set>
%>
<p>
	${name }<br>
	${id }<br>
	${name2}
</p>


<%
// <c:out>
// 변수를 출력할 때 사용
%>
<p>
	<c:out value="${name}"/>
</p>


<% 
// <c:if> 조건 제어문
// <c:if test="조건문">
//   실행 구문
// </c:if>
%>
<p>
	<c:if test="true">
		test의 조건이 참일 때 실행<br>
	</c:if>
	<c:if test="${param.id == 'hong' }">
		파라미터 id의 값은 ${param.id}입니다.<br>
	</c:if>
	<c:if test="${param.age > 18 }">
		당신은 성인입니다.<br>
	</c:if>
	<c:if test="${param.age <= 18 }">
		당신은 미성년자입니다.<br>
	</c:if>
</p>


<%
// <c:choose> : 자바의 switch문과 if else문을 섞어놓은 느낌의 제어문
%>
<p>
	<c:choose>
		<c:when test="${param.id == 'hong' }">
			홍길동<br>
		</c:when>
		<c:when test="${param.age > 18 }">
			성인<br>
		</c:when>
		<c:otherwise>
			홍길동도 아니고 성인도 아닙니다.<br>
		</c:otherwise>
	</c:choose>
</p>


<%
// <c:forEach> : 반복문
// <c:forEach var = "변수명" items="열거형객체" >
// <c:forEach var = "변수명" begin="시작값" end="끝값">
/*
- var : 변수명
- items : 반복시킬 객체
- begin, end : 시작값, 끝값
- varStatus : 인덱스변수명
*/

List<MemberVO> list = new ArrayList<MemberVO>();
MemberVO vo = new MemberVO();
vo.setId("hong");
vo.setName("홍길동");
vo.setEmail("hong@gmail.com");
list.add(vo);
vo = new MemberVO();
vo.setId("lee");
vo.setName("이순신");
//vo.setEmail("lee@gmail.com");
list.add(vo);
vo = new MemberVO();
vo.setId("kim");
vo.setName("김유신");
vo.setEmail("kim@gmail.com");
list.add(vo);

int i = 0;
for(MemberVO dummy : list){
	i++;
	%>
	<%= i %>번째 아이디 : <%=dummy.getId() %> 이름 : <%=dummy.getName() %> 이메일 : <%=dummy.getEmail() %><br>
	<%
}

request.setAttribute("memberlist", list);
%> 
<p>
	<c:forEach var = "member" items="${memberlist}" varStatus="index">
		${index.index+1}번째 아이디 : ${member.id } 이름 : ${member.name } 이메일 : ${member.email }<br>
	</c:forEach>
</p>
</body>
</html>
