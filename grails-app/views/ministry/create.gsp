<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="savioLayout"> 
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		
		
		  <link rel="stylesheet" href="${resource(dir: 'css', file: 'croppic.css')}" />
		   <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" />
		<script src="${resource(dir: 'js', file: 'croppic.js')}"></script>
		<script src="${resource(dir: 'js', file: 'main.js')}"></script>
	<g:javascript>
	alert("Hola");
	//var cropperHeader = new Crop('yourId');
	
	
	
	//alert("Hola");
	
	
</g:javascript>
<style>
	#cropContainerHeader, #cropContainerModal{
			width: 400px;
			height: 250px;
			position:relative; /* or fixed or absolute */
		}
	</style>

	</head>
	<body>
	


	
	
    
    
		<a href="#create-ministry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-ministry" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${ministryInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${ministryInstance}" var="error">
				<li <g:if test="${error in org.springframework.validacroppicModaltion.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			<div id="yourId">
  
    </div>
   
    <div class="container">
		<div class="row mt centered">
			<div class="col-lg-12">
				<h1 id="examplesTarget" style="border-bottom:1px solid #ccc; padding-bottom:20px;">EXAMPLES</h1>
			</div>
		</div><!-- /row -->
		
		<div class="row mt ">
			<div class="col-lg-4 ">
				<h4 class="centered"> MODAL </h4>
				<p class="centered">( open in modal window )</p>
				<div id="cropContainerModal"></div>
			</div>
			
		
		</div>
	</div>
    
    
    
			<g:form url="[resource:ministryInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				
				
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
		<script>
	
		
		
		var croppicContainerModalOptions = {
				uploadUrl:'${createLink(controller:'image', action: 'upload', absolute: true)}',
				cropUrl:'${createLink(controller:'image', action: 'crop', absolute: true)}',
				modal:true,
				imgEyecandyOpacity:0.4,
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> '
		}
		var cropContainerModal = new Croppic('cropContainerModal', croppicContainerModalOptions);
		
	
		
	</script>
	</body>
</html>
