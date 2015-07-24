
<%@ page import="com.intelligrape.linksharing.ResourceRead" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resourceRead.label', default: 'ResourceRead')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-resourceRead" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-resourceRead" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="resourceRead.user.label" default="User" /></th>
					
						<th><g:message code="resourceRead.resource.label" default="Resource" /></th>
					
						<g:sortableColumn property="isRead" title="${message(code: 'resourceRead.isRead.label', default: 'Is Read')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${resourceReadInstanceList}" status="i" var="resourceReadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${resourceReadInstance.id}">${fieldValue(bean: resourceReadInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: resourceReadInstance, field: "resource")}</td>
					
						<td><g:formatBoolean boolean="${resourceReadInstance.isRead}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${resourceReadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
