<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "student.*" %>
<%@ page import = "java.util.*" %>
<%
// StudentDAO 객체 생성
// getStuVO() 메서드 호출
// 메서드 결과(StudentVO)를 받아서 출력

StudentDAO dao = new StudentDAO();
StudentVO stu = dao.getStuVO(Integer.parseInt(request.getParameter("studno")));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1">
	<tr>
		<td>학생번호</td>
		<td><%=stu.getStudno() %></td>
	</tr>
	<tr>
		<td>학생명</td>
		<td><%=stu.getName() %></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=stu.getId() %></td>
	</tr>
	<tr>
		<td>학년</td>
		<td><%=stu.getGrade() %>학년</td>
	</tr>
	<tr>
		<td>주민번호</td>
		<td><%=stu.getJumin() %></td>
	</tr>
	<tr>
		<td>생일</td>
		<td><%=stu.getBirthday() %></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><%=stu.getTel() %></td>
	</tr>
	<tr>
		<td>신장</td>
		<td><%=stu.getHeight() %></td>
	</tr>
	<tr>
		<td>몸무게</td>
		<td><%=stu.getWeight() %></td>
	</tr>
	<tr>
		<td>주전공</td>
		<td><%=stu.getMajor1()%></td>
	</tr>
	<tr>
		<td>부전공</td>
		<td><%=stu.getMajor2() %></td>
	</tr>
	<tr>
		<td>담당교수번호</td>
		<td><%=stu.getProfno() %></td>
	</tr>
	<%dao.close();%>
</table>
</body>
</html>
