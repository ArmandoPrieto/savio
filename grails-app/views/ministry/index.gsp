
<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ministry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ministry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="imageId" title="${message(code: 'ministry.imageId.label', default: 'Image Url')}" />
					
						<g:sortableColumn property="shortDescription" title="${message(code: 'ministry.shortDescription.label', default: 'Short Description')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'ministry.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'ministry.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'ministry.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ministryInstanceList}" status="i" var="ministryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ministryInstance.id}">${fieldValue(bean: ministryInstance, field: "imageId")}</g:link></td>
					
						<td>${fieldValue(bean: ministryInstance, field: "shortDescription")}</td>
					
						<td>${fieldValue(bean: ministryInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: ministryInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: ministryInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ministryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
