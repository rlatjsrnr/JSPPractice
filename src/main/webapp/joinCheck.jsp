<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!-- joinCheck.jsp -->
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="joinMember" class="vo.MemberVO" />
<jsp:setProperty name="joinMember" property="*" />
<jsp:useBean id="memberList" type="java.util.List<vo.MemberVO>" class="java.util.ArrayList" scope="application"/>

<%
	if(memberList.contains(joinMember)){
		out.println("<script>");
		out.println("alert('이미 사용중인 아이디 입니다.');");
		out.println("history.back();");
		out.println("</script>");
		return;
	}
	
	memberList.add(joinMember);	
	out.println("<script>");
	out.println("alert('회원가입 성공');");
	out.println("location.href='index.jsp?page=login';");
	out.println("</script>");
%>







