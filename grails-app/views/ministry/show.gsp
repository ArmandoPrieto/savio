<%@ page import="saviowebpage.Ministry" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 		<meta name="layout" content="savioLayout"/>
		<g:set var="entityName" value="${message(code: 'ministry.label', default: 'Ministry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
   <g:render template="/common/menu" />
<!--SUBPAGE HEAD-->

<div class="subpage-head has-margin-bottom">
  <div class="container">
    <h3>${ministryInstance?.name}</h3>
    <p class="lead"> God is faithful; he will not let you be tempted beyond what you can bear. </p>
  </div>
</div>

<!-- // END SUBPAGE HEAD -->

<div class="container has-margin-bottom">
  <div class="row">
    <div class="col-md-9 has-margin-bottom"> <img src="${ministryInstance.imageUrl}" class="img-responsive has-margin-xs-bottom" alt="ministry">
      <p>${raw(ministryInstance.description)}</p>
      <p> Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum. </p>
      <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
      <blockquote> And we know that in all things God works for the good of those who love him, who have been called according to his purpose. </blockquote>
      <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
      <h4>Another Heading</h4>
      <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
      <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
    </div>
    <!--// col md 9--> 
    
    <!--Latest Sermons-->
    <div class="col-md-3">
      <div class="event-right-block has-border has-margin-bottom">
        <div class="section-title highlight-bg has-padding-xs-top has-padding-bottom">
          <h4> UPCOMING EVENTS </h4>
        </div>
        <div class="el-block has-margin-xs-bottom">
          <h4> JULY 16 </h4>
          <p class="el-head">Weekly meeting &amp; prayer</p>
          <span>Monday 07:00 AM</span>
          <p class="el-cta"><a class="btn btn-primary" href="#" role="button">Details →</a></p>
        </div>
        <div class="el-block ">
          <h4> JUL 29 </h4>
          <p class="el-head">Show me your faith</p>
          <span>Thursday 02:00 PM</span>
          <p class="el-cta"><a class="btn btn-primary" href="#" role="button">Details →</a></p>
        </div>
      </div>
      <div class="well">
        <div class="section-title">
          <h4> RECENT SERMONS </h4>
        </div>
        <div class="list-group"> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Heavens and the earth</p>
          <p class="list-group-item-text">24:15 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Prayer and petition</p>
          <p class="list-group-item-text">12:00 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Fruit of the Spirit</p>
          <p class="list-group-item-text">30:25 mins</p>
          </a> <a href="#" class="list-group-item">
          <p class="list-group-item-heading">Do not be afraid; keep on...</p>
          <p class="list-group-item-text">17:00 mins</p>
          </a> </div>
      </div>
    </div>
  </div>
</div>

<!-- RELATED MINISTRIES -->
<div class="container">
  <div class="section-title">
    <h4> RELATED MINISTRIES </h4>
  </div>
   <g:render template="/ministry/list" model="['ministries':ministries]"/>
</div>
<!-- // END RELATED MINISTRIES--> 

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
        <p>Catholic Church<br>
          121 King Street, Melbourne <br>
          Victoria 3000 Australia<br>
          <br>
          Phone: +61 3 8376 6284<br>
          Email: <a href="#">mail@catholicwebsite.com</a></p>
      </div>
      <div class="col-sm-6 col-md-3">
        <h5>CONNECT</h5>
        <div class="social-icons"><a href="#"><img src="${resource(dir: 'images', file: 'fb-icon.png')}" alt="social"></a> <a href="#"><img src="${resource(dir: 'images', file: 'tw-icon.png')}" alt="social"></a> <a href="#"><img src="${resource(dir: 'images', file: 'in-icon.png')}" alt="social"></a></div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="container">
      <p class="text-center">Copyright © 2014 All rights reserved</p>
    </div>
  </div>
</footer>
<!-- END FOOTER --> 

</script>
</body>
</html>
