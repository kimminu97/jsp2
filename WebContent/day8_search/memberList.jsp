<%@page import="hrd.vo.Member"%>
<%@page import="java.util.List"%>
<%@page import="hrd.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao dao =MemberDao.getInstance();
	String find = request.getParameter("search_name");
	List<Member> list = null;
	if(find==null || find.length()==0)
		list= dao.selectAll();
	else
		list=dao.searchName(find);

	request.setAttribute("list", list);
	pageContext.forward("4_memberlist.jsp");	//사용자 뷰 화면 파일
	
%>