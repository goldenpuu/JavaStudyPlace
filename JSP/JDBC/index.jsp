<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "student.*" %>
<%@ page import = "java.util.*" %>
<%
// StudentDAO 객체 생성
// getStuList() 메서드 호출
// 메서드 결과(ArrayList)를 받아서 출력

StudentDAO dao = new StudentDAO();
List<StudentVO> stuList = dao.getStuList();
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
		<td>학생명</td>
		<td>아이디</td>
		<td>학년</td>
		<td>연락처</td>
	</tr>
	<%
	for(int i = 0; i < stuList.size(); i++){
	%>
	<tr>
		<td><%=stuList.get(i).getStudno() %></td>
		<td><%=stuList.get(i).getName() %></td>
		<td><a href="detail.jsp?studno=<%=stuList.get(i).getStudno() %>"><%=stuList.get(i).getId() %></a></td>
		<td><%=stuList.get(i).getGrade() %>학년</td>
		<td><%=stuList.get(i).getTel() %></td>
		<td><a href="delconfirm.jsp?studno=<%=stuList.get(i).getStudno() %>&name=<%=stuList.get(i).getName() %>">삭제</a></td>
	</tr>
	<%}
	dao.close();%>
</table>
</body>
</html>
