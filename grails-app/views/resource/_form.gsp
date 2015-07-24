<%@ page import="com.intelligrape.linksharing.Resource" %>



<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'summary', 'error')} required">
	<label for="summary">
		<g:message code="resource.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="summary" required="" value="${resourceInstance?.summary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'resourceType', 'error')} required">
	<label for="resourceType">
		<g:message code="resource.resourceType.label" default="Resource Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="resourceType" from="${com.intelligrape.linksharing.enums.ResourceType?.values()}" keys="${com.intelligrape.linksharing.enums.ResourceType.values()*.name()}" required="" value="${resourceInstance?.resourceType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'reads', 'error')} ">
	<label for="reads">
		<g:message code="resource.reads.label" default="Reads" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${resourceInstance?.reads?}" var="r">
    <li><g:link controller="resourceRead" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resourceRead" action="create" params="['resource.id': resourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resourceRead.label', default: 'ResourceRead')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'resourceRatings', 'error')} ">
	<label for="resourceRatings">
		<g:message code="resource.resourceRatings.label" default="Resource Ratings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${resourceInstance?.resourceRatings?}" var="r">
    <li><g:link controller="resourceRating" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resourceRating" action="create" params="['resource.id': resourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resourceRating.label', default: 'ResourceRating')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="resource.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${com.intelligrape.linksharing.Topic.list()}" optionKey="id" required="" value="${resourceInstance?.topic?.id}" class="many-to-one"/>

</div>

