<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css" />
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_editor.css')}" type="text/css" />
   <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_style.css')}" type="text/css" />
   
   <r:require modules="bootstrap-file-upload"/>
   
	</head>
	<body>
		<a href="#edit-ministry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-ministry" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${ministryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${ministryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:ministryInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${ministryInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	
	
<script src="${resource(dir: 'js/libs', file: 'jquery-1.11.1.min.js')}"></script>

<script src="${resource(dir: 'js', file: 'froala_editor.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'tables.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'lists.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'colors.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'media_manager.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'font_family.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'font_size.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'block_styles.min.js')}"></script>
<script src="${resource(dir: 'js/plugins', file: 'video.min.js')}"></script>




  <script>
      $(function(){
          $('#edit')
            .editable({inlineMode: false})
      });
  </script>
	</body>
</html>
