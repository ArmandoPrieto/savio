 <g:set var="counter" value="${0}" />
    <g:each in="${ministries}">
       <g:if test="${counter % 3 == 0}">
	        <div class="row feature-block">
		</g:if>
		<div class="col-md-4 col-sm-6 has-margin-bottom">
		 <div style="width:370px;height:120px;overflow:hidden">
		 <img class="img-responsive" src="${createLink(controller: 'image', action: 'thumbnail',id: ministryInstance.id)}" alt="catholic church">
		 </div>
		    <h5>${it.name.toUpperCase()}</h5>
		    <p>${it.shortDescription}</p>
		    <p><g:link controller="ministry" action="show" id="${it.id}" role="button">Read more →</g:link></p>
		</div>
		<g:set var="counter" value="${counter + 1}" />
		<g:if test="${it == ministries.last() || counter % 3 == 0}">
	    	 </div>
		</g:if>
	</g:each>