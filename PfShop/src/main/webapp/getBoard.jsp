<%@ page import="com.shop.model.BoardVO" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/include/logintop.jsp" %>
    
<%
	// 세션에 저장된 게시글 정보를 꺼낸다.
	BoardVO board = (BoardVO) session.getAttribute("board");
%>
 
<section>
<body>

<div align="center">
<br>

	<br><br>
	<form action="updateBoard.do" method="post">
	<input name="seq" type="hidden" value="${board.seq}"/>
		<table border="1">
		
			<tr>
				<td bgcolor="orange" width="70">제목</td>
				<td align="left"><input name="title" type="text" value="${board.title}"/></td>
			</tr>
			
			<tr>
				<td bgcolor="orange">작성자</td>
				<td align="left"><input name="title" type="text" value="${board.writer}"/></td>
			</tr>
			
			<tr>
				<td bgcolor="orange">내용</td>
				<td align="left"><textarea name="content" cols="40" rows="10">${board.content}</textarea></td>
			</tr>
			
			<tr>
				<td bgcolor="orange">등록일</td>
				<td align="left">${board.regdate }</td>
			</tr>
			
			<!--  
			<tr>
				<td bgcolor="orange">이미지</td>
				<td align="left"></td>
			</tr>
			-->
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글 수정"/>
					<button type="button" onclick="location.href='insertBoard.jsp'">글 등록</button>
					<button type="button" onclick="location.href='deleteBoard.do?seq=${board.seq }'">글 삭제</button>
					<button type="button" onclick="location.href='getBoardList.do'">목록으로</button>
				</td>
			</tr>
		
		</table>
	</form>

<br>
<br>
</div>

</body>
</section>

<%@ include file="/include/bottom.jsp" %>
