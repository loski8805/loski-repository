<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  String path = request.getContextPath();
  // out.print(path);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 게시판 구현</title>
<link  rel="stylesheet"  href="<%=path %>/include/top.css" >
<style type="text/css"></style>
</head>

<body>
<header> 
	<h2><a href=loginmainpage.jsp>기본 게시판 구현</a></h2>
</header>

<nav>
<font size=4>
<b>
 &emsp;<a href=logout.do> 로그아웃 </a>
 &emsp;<a href=getBoardList.do> 게시판 </a> 

 &emsp;&emsp;&emsp;&emsp;&emsp;
 &emsp;&emsp;&emsp;&emsp;&emsp;
 &emsp;&emsp;&emsp;&emsp;&emsp;
 &emsp;&emsp;&emsp;&emsp;&emsp;
 &emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;
 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;${userName}님 환영합니다.&emsp;
 <button type="button" onclick="location.href='mypage.jsp'">마이페이지</button>

 </b>
 </font>
  
 </nav>
