<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import="java.util.List" %>

<%
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	//personVo 메모리에 올린다.
	//생성자 name hp company
	
	//Dao.insert(personVo)
	
	//Person 객체만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	System.out.println(personVo);
	
	//PhoneDao 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	
	//리스트 가져와서 html 섞어놓는다
	List<PersonVo> personList = phoneDao.getPersonList();
	System.out.println(personList);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>리스트-저장 후 리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	
	<%for(int i=0; i<personList.size(); i++){ %>
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=personList.get(i).getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personList.get(i).getCompany() %></td>
			</tr>
		</table>
		<br>
	<%} %>
</body>
</html>