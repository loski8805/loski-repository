<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.shop.model.BoardVO" %>
<%@ page import="com.shop.model.UserVO" %>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ include file="/include/logintop.jsp" %>
    
<section>
<body>
<div id=div1 align="center">
	<br>


 
 <!-- 검색 시작 -->
 <form action="getBoardList.do" method="post">
 	<table border="1" width="700">
 		<tr>
 			<td align="right">
 				<select name="searchCondition">
 				<c:forEach items="${conditionMap }" var="option">
 					<option value="${option.value }">${option.key }
 				</c:forEach>
 				</select>
 				<input name="searchKeyword" type="text"/>
 				<input type="submit" value="검색"/>
 		</tr>
 	</table>
 	</form>
</div>

<!-- 검색종료 -->
<div align="center">
<table border="1" width="700">
	<tr>
		<th bgcolor="orange" width="80">번호</th>
		<th bgcolor="orange" width="350">제목</th>
		<th bgcolor="orange" width="150">작성자</th>
		<th bgcolor="orange" width="150">등록일</th>
	</tr>
	
<c:forEach items="${boardList }" var="board">
	<tr>
		<td>${board.seq }</td>
		<td align="left">
			<a href="getBoard.do?seq=${board.seq }">
				${board.title }
			</a>
		</td>
		<td>${board.writer }</td>
		<td>${board.regdate }</td>
	</tr>
</c:forEach>
	
</table>
<br>
<button type="button" onclick="location.href='insertBoard.jsp'">새글등록</button>
</div>
</body>
</section>

<%@ include file="/include/bottom.jsp" %>