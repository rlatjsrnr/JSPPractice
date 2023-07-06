<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!-- withdraw.jsp -->
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="memberList" type="java.util.List<vo.MemberVO>" class="java.util.ArrayList" scope="application" />
<jsp:useBean id="loginMember" class="vo.MemberVO" scope="session" />

<%
	int index = memberList.indexOf(loginMember);
	memberList.remove(index);
	session.removeAttribute("loginMember");
	Cookie cookie = new Cookie("rememberMe", "");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>
<script>
	alert('탈퇴완료');
	location.href='index.jsp';
</script>






