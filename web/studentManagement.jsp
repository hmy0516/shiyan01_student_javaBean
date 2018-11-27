<%@ page import="java.util.List" %>
<%@ page import="com.student.pojo.Student" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>

<script>
	function btnDelete(id){
		if(confirm("确认删除该条记录吗?"))
			location.href="studentDelete.jsp?id="+id;
	}
</script>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="stuDao" class="com.student.dao.StudentDao"/>
<jsp:useBean id="stu" class="com.student.pojo.Student"/>

	<a href="studentAdd.jsp">添加</a>&nbsp;&nbsp;

		<table border="2" width="500px">
			<tr>
				<td>学号</td>
				<td>姓名</td>
				<td>年龄</td>
				<td>操作</td>
			</tr>
            <%
                List<Student> stulist=stuDao.studentSerchAll();
                for(Student s:stulist){
            %>
            <tr>
                <td><%=s.getSnum()%></td>
                <td><%=s.getName() %></td>
                <td><%=s.getAge() %></td>
                <td>
                    <a href="studentDetail.jsp?id=<%=s.getId() %>">详细</a>&nbsp;
                    <a href="studentEdit.jsp?id=<%=s.getId() %>">编辑</a>&nbsp;
                    <a href="#" onclick="btnDelete('<%=s.getId() %>')">删除</a>
                </td>
            </tr>
            <%
                }
            %>


		</table>
				

</body>
</html>