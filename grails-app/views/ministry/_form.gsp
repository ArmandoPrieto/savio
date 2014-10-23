<%@ page import="saviowebpage.Ministry" %>



<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'imageUrl', 'error')} required">
	<label for="imageUrl">
		<g:message code="ministry.imageUrl.label" default="Image Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="imageUrl" required="" value="${ministryInstance?.imageUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'shortDescription', 'error')} required">
	<label for="shortDescription">
		<g:message code="ministry.shortDescription.label" default="Short Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortDescription" maxlength="200" required="" value="${ministryInstance?.shortDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="ministry.contacts.label" default="Contacts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ministryInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['ministry.id': ministryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="ministry.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${ministryInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'identities', 'error')} ">
	<label for="identities">
		<g:message code="ministry.identities.label" default="Identities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ministryInstance?.identities?}" var="i">
    <li><g:link controller="partyIdentity" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="partyIdentity" action="create" params="['ministry.id': ministryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'partyIdentity.label', default: 'PartyIdentity')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'leaders', 'error')} ">
	<label for="leaders">
		<g:message code="ministry.leaders.label" default="Leaders" />
		
	</label>
	<g:select name="leaders" from="${general.demographic.Person.list()}" multiple="multiple" optionKey="id" size="5" value="${ministryInstance?.leaders*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="ministry.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${ministryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'participants', 'error')} ">
	<label for="participants">
		<g:message code="ministry.participants.label" default="Participants" />
		
	</label>
	<g:select name="participants" from="${general.demographic.Person.list()}" multiple="multiple" optionKey="id" size="5" value="${ministryInstance?.participants*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="ministry.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${general.demographic.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${ministryInstance?.roles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ministryInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="ministry.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${ministryInstance?.type}"/>

</div>

