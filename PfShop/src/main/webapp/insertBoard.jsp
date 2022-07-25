<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shop.model.UserVO" %>    

<%@ include file="/include/logintop.jsp" %>

<%
	// 세션에 저장된 회원 정보를 꺼낸다.
	UserVO user = (UserVO) session.getAttribute("user");
%>

<section>
	<div id=div1 align="center">
	<br>
		<br><br>
		<form method="post">
			<table border="1">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input type=text name="title"/>
					</td>
				</tr>
				
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">
						<input type=text name="writer" size="10" value="${user.name}"/>
					</td>
				</tr>
				
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="content" cols="40" rows="10"></textarea>
					</td>
				</tr>
				
				<!--  
				<tr>
					<td bgcolor="orange" width="70">이미지</td>
					<td align="left">
						<input type="file" name="imgFile"/>
						<input type="submit" value="이미지저장" onclick="javascript: form.action='saveImage.do';"/>
					</td>
				</tr>
				-->
				
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="새글등록" onclick="javascript: form.action='insertBoard.do';"/>
					<button type="button" onclick="location.href='getBoardList.do'">목록으로</button>
					</td>
				</tr>
				
			</table>
		</form>
		<br><br>
	</div>
</section>
