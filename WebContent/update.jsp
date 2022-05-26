<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import="java.util.List" %>

<%
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int personId = Integer.parseInt(request.getParameter("personId"));
	
	//Person 객체만들기
	PersonVo personVo = new PersonVo(personId, name, hp, company);
	System.out.println(personVo);
	
	//PhoneDao 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(personVo);
	System.out.println(count);
	
	
	//리스트 가져와서 html 섞어놓는다
	List<PersonVo> personList = phoneDao.getPersonList();
	System.out.println(personList);
	
	
	
	
	
	
	response.sendRedirect("./list.jsp");
	
	
%>
