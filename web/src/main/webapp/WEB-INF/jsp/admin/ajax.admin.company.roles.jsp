<%@ page trimDirectiveWhitespaces="true"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>



<c:if test="${not empty roleList}">
	[
	<c:forEach items="${roleList}" var="role" varStatus="stat">
		{"id": "${role.id}", "name": "${role.name}"}<c:if test="${!stat.last}">,</c:if>
	</c:forEach>
	]
</c:if>