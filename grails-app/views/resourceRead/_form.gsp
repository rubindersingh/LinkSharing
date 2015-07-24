<%@ page import="com.intelligrape.linksharing.ResourceRead" %>



<div class="fieldcontain ${hasErrors(bean: resourceReadInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="resourceRead.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.intelligrape.linksharing.User.list()}" optionKey="id" required="" value="${resourceReadInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceReadInstance, field: 'resource', 'error')} required">
	<label for="resource">
		<g:message code="resourceRead.resource.label" default="Resource" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resource" name="resource.id" from="${com.intelligrape.linksharing.Resource.list()}" optionKey="id" required="" value="${resourceReadInstance?.resource?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceReadInstance, field: 'isRead', 'error')} ">
	<label for="isRead">
		<g:message code="resourceRead.isRead.label" default="Is Read" />
		
	</label>
	<g:checkBox name="isRead" value="${resourceReadInstance?.isRead}" />

</div>

