<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>

<%@ page import="java.util.List" %>

<%
	//파라미터에서 값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//PersonVo 만들기
	PersonVo personVo = new PersonVo(id, name, hp, company);
	System.out.println(personVo);
	
	
	//PhoneDao personUpdate()로 수정하기
	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personUpdate(personVo);
	System.out.println(count);
	
	
	
	
	response.sendRedirect("./list.jsp");
	
	
%>
