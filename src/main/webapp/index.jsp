<%@ page pageEncoding="UTF-8"%>
<%
	String selectPage = request.getParameter("page");
	if(selectPage == null){
		selectPage = "default";
	}
%>
<jsp:include page="common/header.jsp" />
<section>
	<jsp:include page='<%=selectPage+".jsp" %>'/>
</section>
<jsp:include page="common/footer.jsp" />








