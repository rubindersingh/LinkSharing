<%@ page import="com.intelligrape.linksharing.Topic" %>



<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'topicName', 'error')} required">
	<label for="topicName">
		<g:message code="topic.topicName.label" default="Topic Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="topicName" required="" value="${topicInstance?.topicName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'topicDescription', 'error')} ">
	<label for="topicDescription">
		<g:message code="topic.topicDescription.label" default="Topic Description" />
		
	</label>
	<g:textField name="topicDescription" value="${topicInstance?.topicDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'visibility', 'error')} required">
	<label for="visibility">
		<g:message code="topic.visibility.label" default="Visibility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="visibility" from="${com.intelligrape.linksharing.enums.Visibility?.values()}" keys="${com.intelligrape.linksharing.enums.Visibility.values()*.name()}" required="" value="${topicInstance?.visibility?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'resources', 'error')} ">
	<label for="resources">
		<g:message code="topic.resources.label" default="Resources" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${topicInstance?.resources?}" var="r">
    <li><g:link controller="resource" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resource" action="create" params="['topic.id': topicInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resource.label', default: 'Resource')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'subscriptions', 'error')} ">
	<label for="subscriptions">
		<g:message code="topic.subscriptions.label" default="Subscriptions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${topicInstance?.subscriptions?}" var="s">
    <li><g:link controller="subscription" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subscription" action="create" params="['topic.id': topicInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subscription.label', default: 'Subscription')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="topic.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.intelligrape.linksharing.User.list()}" optionKey="id" required="" value="${topicInstance?.user?.id}" class="many-to-one"/>

</div>

