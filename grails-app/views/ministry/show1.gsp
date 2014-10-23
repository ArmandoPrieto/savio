
<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ministry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ministry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ministry">
			
				<g:if test="${ministryInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="ministry.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${ministryInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="ministry.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${ministryInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="ministry.contacts.label" default="Contacts" /></span>
					
						<g:each in="${ministryInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="ministry.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${ministryInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.identities}">
				<li class="fieldcontain">
					<span id="identities-label" class="property-label"><g:message code="ministry.identities.label" default="Identities" /></span>
					
						<g:each in="${ministryInstance.identities}" var="i">
						<span class="property-value" aria-labelledby="identities-label"><g:link controller="partyIdentity" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.leaders}">
				<li class="fieldcontain">
					<span id="leaders-label" class="property-label"><g:message code="ministry.leaders.label" default="Leaders" /></span>
					
						<g:each in="${ministryInstance.leaders}" var="l">
						<span class="property-value" aria-labelledby="leaders-label"><g:link controller="person" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="ministry.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${ministryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.participants}">
				<li class="fieldcontain">
					<span id="participants-label" class="property-label"><g:message code="ministry.participants.label" default="Participants" /></span>
					
						<g:each in="${ministryInstance.participants}" var="p">
						<span class="property-value" aria-labelledby="participants-label"><g:link controller="person" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="ministry.roles.label" default="Roles" /></span>
					
						<g:each in="${ministryInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="role" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${ministryInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="ministry.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${ministryInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ministryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ministryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
