<!-- Navigation Bar Starts -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.html"> <img src="${resource(dir: 'images', file: 'church-logo.png')}" alt="church logo" class="img-responsive"></a> </div>
    <div class="navbar-collapse collapse">
    
    
    
    
      <ul class="nav navbar-nav navbar-right">
      <g:each in="${menus}">
    <li class="${it.active?'active':''}"><g:link > ${it.title}</g:link></li>
   
</g:each>
       
      </ul>
   
   
   
    </div>
    <!--/.nav-collapse --> 
    
 
 
  </div>
</div>
<!--// Navbar Ends--> 
