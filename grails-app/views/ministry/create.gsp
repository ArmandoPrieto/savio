<!DOCTYPE html>
<html>
	<head>
	
		<meta name="layout" content="main"> 
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		
		
		 <link rel="stylesheet" href="${resource(dir: 'css', file: 'croppic.css')}" />
		  <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" />
		  
		 <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css" />
		  <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_editor.css')}" type="text/css" />
          <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_style.css')}" type="text/css" />
  
		<script src="${resource(dir: 'js', file: 'croppic.js')}"></script>
		<script src="${resource(dir: 'js', file: 'main.js')}"></script>

<style>

 .fieldcontain input{
 width:50%;
 
 
 }
 section {
            width: 100%;
            margin: auto;
            text-align: left;
        }
        
	#cropContainerHeader, #cropContainerModal{
			width: 1300px;
			height: 600px;
			border-color:black;
			border-style: solid;
    		border-top-width: 5px;
    		border-right-width: 1px;
    		border-left-width: 1px;
    		border-bottom-width: 1px;
			
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
	    		<g:eachError><p><g:message error="${it}"/></p></g:eachError>
	    	</ul>
		</g:hasErrors>

		<section>	
			
			<div id="yourId">
  
    </div>
    
   
    <div class="container">
		
		
		<div class="row mt ">
			<div class="col-lg-4 ">
				<h4 class="centered"> Head Image </h4>
				
				<div id="cropContainerModal"></div>
			</div>
		</div>

	
			
		</div>
		</section>
</div>
	
    		<g:form url="[resource:ministryInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
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
		var croppicContainerModalOptions = {
				uploadUrl:'${createLink(controller:'image', action: 'upload', absolute: true)}',
				cropUrl:'${createLink(controller:'image', action: 'crop', absolute: true)}',
				outputUrlId:'myOutputId',
				modal:true,
				imgEyecandyOpacity:0.4,
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> '
		}
		var cropContainerModal = new Croppic('cropContainerModal', croppicContainerModalOptions);
		
	
		
	</script>


	</body>
</html>
