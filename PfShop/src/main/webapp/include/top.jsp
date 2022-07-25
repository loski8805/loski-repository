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
<style type="text/css">


</style>
</head>
<body>
<header> <h2><a href=mainpage.jsp>기본 게시판 구현</a></h2></header>
<nav>
<font size=4><b>
 &emsp;<a href=login.jsp> 로그인 </a>
 &emsp;<a href="javascript:alert('로그인 후 이용해주세요');" onfocus="this.blur()"> 게시판 </a> 
 </b>
 </font> 
 </nav>
