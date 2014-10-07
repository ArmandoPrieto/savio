<!-- Navigation Bar Starts -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"> <img src="${resource(dir: 'images', file: 'church-logo.png')}" alt="church logo" class="img-responsive"></a> </div>
    <div class="navbar-collapse collapse">
    
    
    
    
      <ul class="nav navbar-nav navbar-right">
      <g:each in="${menus}">
   <g:if test="${it?.subMenu}">
     <li class="${it.active?'active':''} dropdown"><g:link class="dropdown-toggle" data-toggle="dropdown"> ${it.title} <span class="caret"></span></g:link>
    
    	 <ul class="dropdown-menu dropdown-menu-left" role="menu">
    	<g:each in="${it.subMenu}" var="sub">
    	
    	   <li><a href="#">${sub.title}</a></li>
    	
    	</g:each>
    	 </ul>
    	
    </li>
   </g:if>
   <g:else>
    <li class="${it.active?'active':''}"><g:link> ${it.title}</g:link>
     </li>
   </g:else>
  
   
</g:each>
       
     <!--     
     	<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">SERMONS <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-left" role="menu">
            <li><a href="sermons.html">Christ-Occupied</a></li>
            <li><a href="sermons.html">God's Love</a></li>
            <li><a href="sermons.html">Faithfulness</a></li>
            <li><a href="sermons.html">Praise Him</a></li>
          </ul>
        </li>
        -->
      </ul>
   
   
   
    </div>
    <!--/.nav-collapse --> 
    
 
 
  </div>
</div>
<!--// Navbar Ends--> 
