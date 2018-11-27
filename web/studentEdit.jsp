<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.student.pojo.Student" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生编辑页面</title>
</head>
<body>
<jsp:useBean id="stuDao" class="com.student.dao.StudentDao"/>
<%
		request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		List<Student> students = stuDao.studentFindById(id);
%>
	<form action="studentEditProc.jsp?id=<%=id %>" method="post">
		<table>
			<tr>
				<td>学号</td>
				<td><input type="text" name="snum" value="<%=students.get(0).getSnum()%>" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" value="<%=students.get(0).getName() %>" /></td>
			</tr>
			<tr>
				<td>年龄</td>
				<td><input type="text" name="age" value="<%=students.get(0).getAge() %>" /></td>
			</tr>
			<tr>
				<td>个人介绍</td>
				<td>
					<textarea rows="10" cols="50" name="intro"><%=students.get(0).getIntro() %></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="保存"/>&nbsp;
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>