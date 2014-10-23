<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 <meta name="layout" content="savioLayout"/>

</head>
<body>

<g:render template="/common/menu" model="${menus}"/>



<!-- BANNER SLIDER
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item slide-one active">
      <div class="container">
        <div class="carousel-caption">
          <h3>Ethumb-1.jpgXPERIENCE GOD'S</h3>
          <h1>UNCEASING PROVISION</h1>
          
          <p><a class="btn btn-giant btn-primary" href="charity-donation.html" role="button">JOIN US &rarr;</a></p>
        </div>
      </div>
    </div>
    <div class="item slide-two">
      <div class="container">
        <div class="carousel-caption">
          <h2>Waves of Grace</h2>
          <p class="lead">Receive the unceasing wave after wave, after wave, after wave of Grace God has for you.</p>
          <p><a class="btn btn-lg btn-primary" href="ministry.html" role="button">Learn more &rarr;</a></p>
        </div>
      </div>
    </div>
    <div class="item slide-three">
      <div class="container">
        <div class="carousel-caption">
          <h2>Tijuana Mission Trip</h2>
          <p class="lead">For God did not send his Son into the world to condemn the world, but to save the world through him. <em>John 3:17</em></p>
          <p><a class="btn btn-lg btn-primary" href="image-gallery.html" role="button">Browse gallery &rarr;</a></p>
        </div>
      </div>
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>
<!-- // Banner Slider --> 

<!--UPCOMING EVENT-->

<div class="highlight-bg has-margin-bottom">
  <div class="container event-cta">
    <div class="ec-txt"> <span>UPCOMING EVENT</span>
      <p>"The Law Demands, but Grace Supplies" - Paster J.P.</p>
    </div>
    <a class="btn btn-lg btn-primary" href="event-single.html" role="button">Program details →</a> </div>
</div>

<!-- // UPCOMING EVENT --> 

<!--FEATURED BLOCK-->
<div class="container">
  <div class="row feature-block">
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'cutmypic.png')}" alt="catholic church">
      <h5>GUIDED BY THE HOLY SPIRIT</h5>
      <p>Experience God's Wisdom each day as you are lead by the Holy Spirit. Walk effortlessly into success and happiness and understand the Father's love for you. </p>
      <p><a href="about.html" role="button">View details →</a></p>
    </div>
    <!-- /.col-md-4 -->
  		 <g:each in="${posts}">
   		   <div class="col-md-4 col-sm-6 has-margin-bottom"> 
   		   
   		   <div style="width:370px;height:200px;overflow:hidden">
       <img class="img-responsive" src="${it.image}" alt="ministry sermon">
		
</div>
   		    
		      <h5>${it.title.toUpperCase()}</h5>
		      <p>${raw(it.content)}</p>
		      <p><a href="sermons.html" role="button">View details →</a></p>
		    </div>
   		</g:each>
     <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 center-this has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'thumb-3.jpg')}" alt="bulletin programs">
      <h5>CHRIST OCCUPIED</h5>
      <p>It may sound good to Mankind to be self-occupied. But God wants you to be Christ-Occupied and receive all of your blessings through resting in the work of Jesus.</p>
      <p><a href="events-programs.html" role="button">View details →</a></p>
    </div>
    <!-- /.col-md-4 --> 
  </div>
</div>
<!-- // END FEATURED BLOCK--> 

<!--EVENT LISTS-->
<div class="highlight-bg has-margin-bottom">
  <div class="container event-list">
    <div class="section-title">
      <h4> PROGRAMS &amp; EVENTS </h4>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel">
         <g:each in="${events}">
   
  			<div class="el-block item">
            <h4>  ${it.startDateTime.toString('MMM dd').toUpperCase()} </h4>
            <p class="el-head"> ${it.summary}</p>
            <span> ${it.startDateTime.toString('EEEE hh:mm aa')}</span>
            <p class="el-cta"><a class="btn btn-primary" href="${it.htmlLink}" role="button">Details &rarr;</a></p>
          </div>
		</g:each>
        
        </div>
      </div>
    </div>
  </div>
</div>
<!-- // END EVENT LISTS --> 

<!-- BLOG LIST / LATEST SERMONS -->
<div class="container has-margin-bottom">
  <div class="row">
    <div class="col-md-9 has-margin-bottom">
      <div class="section-title left-align-desktop">
        <h4> LATEST BULLETIN </h4>
      </div>
      
      <!--Blog list-->
      
      <div class="row has-margin-bottom">
        <div class="col-md-4 col-sm-4"> <img class="img-responsive center-block" src="${resource(dir: 'images', file: 'thumb-1.jpg')}" alt="bulletin blog"> </div>
        <div class="col-md-8 col-sm-8 bulletin">
          <h4 class="media-heading">Perseverance of the Saints </h4>
          <p>on 17th June 2014 by <a href="#" class="link-reverse">Vincent John</a></p>
          <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet...</p>
          <a class="btn btn-primary" href="blog-single.html" role="button">Read Article →</a> </div>
      </div>
      
      <!--Blog list-->
      
      <div class="row">
        <div class="col-md-4 col-sm-4"> <img class="img-responsive center-block" src="${resource(dir: 'images', file: 'thumb-2.jpg')}" alt="bulletin blog"> </div>
        <div class="col-md-8 col-sm-8 bulletin">
          <h4 class="media-heading">Lord is Sufficient for all of our needs </h4>
          <p>on 17th June 2014 by <a href="#" class="link-reverse">Jose Mathew</a></p>
          <p class="media-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet...</p>
          <a class="btn btn-primary" href="blog-single.html" role="button">Read Article →</a> </div>
      </div>
    </div>
    <!--// col md 9--> 
    
    <!--Latest Sermons-->
    <div class="col-md-3">
      <div class="well">
        <div class="section-title">
          <h4> RECENT SERMONS </h4>
        </div>
        <a href="#"><img src="${resource(dir: 'images', file: 'thumb-2.jpg')}" class="img-responsive center-block" alt="video thumb"></a>
        <div class="list-group"> <a href="sermons.html" class="list-group-item">
          <p class="list-group-item-heading">Heavens and the earth</p>
          <p class="list-group-item-text">24:15 mins</p>
          </a> <a href="sermons.html" class="list-group-item">
          <p class="list-group-item-heading">Prayer and petition</p>
          <p class="list-group-item-text">12:00 mins</p>
          </a> <a href="sermons.html" class="list-group-item">
          <p class="list-group-item-heading">Fruit of the Spirit</p>
          <p class="list-group-item-text">30:25 mins</p>
          </a> <a href="sermons.html" class="list-group-item">
          <p class="list-group-item-heading">Do not be afraid; keep on...</p>
          <p class="list-group-item-text">17:00 mins</p>
          </a> </div>
      </div>
    </div>
  </div>
</div><g:render template="/common/menu" />
<!-- END BLOG LIST / LATEST SERMONS --> 

<!--CHARITY DONATION


<div class="container has-margin-bottom">
  <div class="section-title">
    <h4>GRACE OUTREACH </h4>
  </div>
  <div class="charity-box">
    <div class="charity-image"> <img src="${resource(dir: 'images', file: 'charity-donation.jpg')}" class="img-responsive" alt="charity donation fundraising"></div>
    <div class="charity-desc">
      <h3>Help human trafficking survivors</h3>
      <p> Posted by <a class="link-reverse" href="#">Steven</a> on Aug 11 2014</p>
      <h2 class="pledged-amount">$6560.00</h2>
      <p>Pledged of $15000 goal</p>
      <div class="progress">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete</span>60%</div>
      </div>
      <div class="pull-left has-margin-xs-right">
        <h3>24</h3>
        <p>Backers</p>
      </div>
      <div class="pull-left">
        <h3 class="pledged-amount">17</h3>
        <p>Days left</p>
      </div>
      <div class="donate-now"> <a href="charity-donation.html" class="btn btn-lg btn-primary">Donate Now →</a> </div>
    </div>
  </div>
</div>

// END CHARITY DONATION --> 

<!--OUR GALLERY-->
<div class="container has-margin-bottom">
  <div class="section-title">
    <h4> OUR CORE TEAM </h4>
  </div>
  <div class="img-gallery row">
   <div class="col-md-12">
        <div class="owl-carousel3">
        
     
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'taaj.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'taaj.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'julio.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'julio.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'Yami.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'Yami.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'alynn.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'alynn.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
   
    
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'michael.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'michael.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'david.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'david.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'gaby.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'gaby.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'nick.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'nick.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    
    
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'armando.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'armando.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'daya.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'daya.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'jacob.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'jacob.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'jose.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'jose.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
  	
  	
  	<div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'aaron.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'aaron.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'edi.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'edi.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
    <div class="item"> <a class="fancybox" href="${resource(dir: 'images/gallery', file: 'christina.png')}" data-fancybox-group="gallery" title="church image gallery"> <img src="${resource(dir: 'images/gallery/thumb', file: 'christina.png')}" class="img-responsive" width="270" height="270" alt="church image gallery"> </a> </div>
 	
  </div>
   </div>
  </div>
</div>
<!--// END OUR GALLERY --> 

<!-- BIBLE QUOTES -->
<div class="highlight-bg has-margin-bottom">
  <div class="container event-list">
    <div class="section-title">
      <h4> BIBLE QUOTES </h4>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="owl-carousel2">
          <div class="item">
            <blockquote class="blockquote-centered"> For God so loved the world that he gave his one and only begotten Son, that who ever believes in him shall not perish but have eternal life. <small>John 3:16 (KJV)</small> </blockquote>
          </div>
          <div class="item">
            <blockquote class="blockquote-centered"> For if, by the trespass of the one man, death reigned through that one man, how much more will those who receive God's abundant provision of grace!
 <small>Romans 5:17 (NIV)</small> </blockquote>
          </div>
          <div class="item">
            <blockquote class="blockquote-centered">For God did not send his Son into the world to condemn the world, but to save the world through him. <small>John 3:17</small> </blockquote>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- // END BIBLE QUOTES --> 

<!-- OUR MINISTRIES -->
<div class="container">
  <div class="section-title">
    <h4> OUR MINISTRIES </h4>
  </div>
   <g:set var="counter" value="${0}" />
    <g:each in="${ministries}">
       <g:if test="${counter % 3 == 0}">
	        <div class="row feature-block">
		</g:if>
		<div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_1.jpg')}" alt="catholic church">
		    <h5>${it.name}</h5>
		    <p>${it.shortDescription} </p>
		    <p><a href="ministry.html" role="button">Read more →</a></p>
		</div>
		<g:set var="counter" value="${counter + 1}" />
		<g:if test="${it == ministries.last() || counter % 3 == 0}">
	    	 </div>
		</g:if>
	</g:each>
  <div class="row feature-block">
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_1.jpg')}" alt="catholic church">
      <h5>CAMP SAVIO</h5>
      <p>The world says that blood and sweat equals success. But we can rest in Jesus' finished work at the cross because of His blood, sweat, tears... </p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_2.jpg')}" alt="ministry sermon">
      <h5>MONDAY YOUTH GROUP</h5>
      <p>When we rest in the Lord and draw from His Word every day, we have the confidence in knowing our Father has already opened doors...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 center-this has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_3.jpg')}" alt="bulletin programs">
      <h5>YOUNG ADULT GROUP</h5>
      <p>Through these he has given us his very great and precious promises, so that through them you may participate in the divine nature...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 --> 
  </div>
  
  <div class="row feature-block">
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_1.jpg')}" alt="catholic church">
      <h5>SALESIAN ORATORY</h5>
      <p>The world says that blood and sweat equals success. But we can rest in Jesus' finished work at the cross because of His blood, sweat, tears... </p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-6 has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_2.jpg')}" alt="ministry sermon">
      <h5>SAVIO BASKETBALL</h5>
      <p>When we rest in the Lord and draw from His Word every day, we have the confidence in knowing our Father has already opened doors...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 -->
    <div class="col-md-4 col-sm-8 col-sm-offset-2 col-md-offset-0 center-this has-margin-bottom"> <img class="img-responsive" src="${resource(dir: 'images', file: 'ministry_3.jpg')}" alt="bulletin programs">
      <h5>ALTAR SERVERS</h5>
      <p>Through these he has given us his very great and precious promises, so that through them you may participate in the divine nature...</p>
      <p><a href="ministry.html" role="button">Read more →</a></p>
    </div>
    <!-- /.col-md-4 --> 
  </div>
  
</div>
<!-- // END OUR MINISTRIES--> 

<!-- SUBSCRIBE -->
<div class="highlight-bg">
  <div class="container">
    <div class="row">
      <form action="subscribe.php" method="post" class="form subscribe-form" role="form" id="subscribeForm">
        <div class="form-group col-md-3 hidden-sm">
          <h5 class="susbcribe-head"> SUBSCRIBE <span>TO OUR NEWSLETTER</span></h5>
        </div>
        <div class="form-group col-sm-8 col-md-6">
          <label class="sr-only">Email address</label>
          <input type="email" class="form-control input-lg" placeholder="Enter email" name="email" id="address" data-validate="validate(required, email)" required>
          <span class="help-block" id="result"></span> </div>
        <div class="form-group col-sm-4 col-md-3">
          <button type="submit" class="btn btn-lg btn-primary btn-block">Subscribe Now →</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- END SUBSCRIBE --> 

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-md-3">
        <h5>ABOUT THE CHURCH</h5>
        <p>For the word of God is living and active. Sharper than any double-edged sword, it penetrates even to dividing soul and spirit, joints and marrow; it judges the thoughts and attitudes.</p>
      </div>
      <div class="col-sm-6 col-md-3">
        <h5>QUICK LINKS</h5>
        <ul class="footer-links">
          <li><a href="#">Upcoming events</a></li>
          <li><a href="#">Ministries</a></li>
          <li><a href="#">Recent Sermons</a></li>
          <li><a href="#">Contact us</a></li>
        </ul>
      </div>
      <div class="col-sm-6 col-md-3">
        <h5>OUR ADDRESS</h5>
        <p> St. Dominic Savio Church<br>
          13400 Bellflower Blvd. <br>
          Bellflower, CA<br>
          <br>
         
          Email: <a href="#">youthministry@saintdominicsavio.org</a></p>
      </div>
      <div class="col-sm-6 col-md-3">
        <h5>CONNECT</h5>
        <div class="social-icons"><a href="#"><img src="${resource(dir: 'images', file: 'fb-icon.png')}" alt="social"></a> <a href="#"><img src="${resource(dir: 'images', file: 'in-icon.png')}" alt="social"></a> <a href="#"><img src="${resource(dir: 'images', file: 'tw-icon.png')}" alt="social"></a></div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <p class="text-center">Copyright © 2014 All rights reserved</p>
    </div>
  </div>
</footer>
<!-- // END FOOTER --> 

<!-- // END --> 

</body>
</html>
