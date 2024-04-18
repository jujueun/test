<%@page import="com.mystudy.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.mystudy.model.dao.movieDAO"%>
<%@page import="com.mystudy.model.vo.movieVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
List<movieVO> list = null;
try (SqlSession ss = DBService.getFactory().openSession()) {
	list =  ss.selectList("PROJECT2.mTitle");
} catch (Exception e) {
	e.printStackTrace();
} 

System.out.println("list : " + list);
System.out.println("list.size : " + list.size());
session.setAttribute("attr_list", list);

List<movieVO> list2 = null;
try (SqlSession ss = DBService.getFactory().openSession()) {
	list2 =  ss.selectList("PROJECT2.movie");
} catch (Exception e) {
	e.printStackTrace();
}
System.out.println("list2 : " + list2);
session.setAttribute("attr_list2", list2);
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>

<style>

img.icon {
	position: absolute;
	left: 200px;
	top: 60px;
	}
	li {
 	 float: left;
   	 display: block;
	  padding: 10px 26px;
	 font-size: 18px;
	}

	a {
		text-decoration: none;
		color: black;
	}
	ul.menu {
		position: absolute;
		list-style-type: none;
		margin: 0;
		padding: 0;
		top: 60px;
		left: 530px;
	}
	li a:hover {
	 	color: #56BEC0;
	 	font-weight: bold;
	}
	hr.mint {
		background-color: #56BEC0;
		height: 3px;
		margin-top: 120px;
	}
	ul.login {
		position: absolute;
		list-style-type: none;
		margin: 0;
		padding: 0;
		top: 60px;
		right: 200px;
	}
	ul.login li {
		 padding: 12px 5px;
		 font-size: 14px;
	}
	hr.gray {
		background-color: D9D9D9;
		height: 1px;
	}
	
</style>
<body>
<div class="header">
<img class= "icon" src="img/moviechoice.png">

<ul class="menu">
  <li><a href="default.asp">영화목록</a></li>
  <li><a href="news.asp">리뷰모음</a></li>
  <li><a href="contact.asp">자유게시판</a></li>
  <li><a href="about.asp">Q & A</a></li>
  <li><a href="about.asp">Review Of The Month</a></li>
  <li><a href="about.asp">평론가</a></li>
  <li><a href="about.asp">마이페이지</a></li>
</ul>
<ul class="login">
 <li><a href="login.jsp">로그인</a></li>
 <li>/</li>
  <li><a href="join.jsp">회원가입</a></li>
  </ul>
<hr class="mint">
</div>

<div>
<h3 class="top">현재 상영 영화 TOP10</h3>


<%-- select 해서 영화목록 상위 10개 가져오기 --%>
<c:forEach var="vo" items="${attr_list }">
<tr id="banner">
<td>
<img src="img/${vo.mPoster }" alt="제품이미지" width="200">
</td>
<td class="mTitle">${vo.mTitle }</td>
</tr>
</c:forEach>
<button id="next">></button>
</div>
<br>
<div>
<h2>영화목록</h2> 
<form >
  <select name="sort" id="sort">
    <option value="0">최신순</option>
    <option value="1">평점순</option>
  </select>
</form>
<c:forEach var="vo" items="${attr_list2 }">
<tr>
<td>${vo.mTitle }</td>
</tr>
</c:forEach>
<hr class="gray">
</div>
</body>
</html>