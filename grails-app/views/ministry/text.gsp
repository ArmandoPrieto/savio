<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css" />
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_editor.css')}" type="text/css" />
   <link rel="stylesheet" href="${resource(dir: 'css', file: 'froala_style.css')}" type="text/css" />
   
	

    <style>
        body {
            text-align: center;
        }

        section {
            width: 80%;
            margin: auto;
            text-align: left;
        }
    </style>
</head>

<body>
  <section id="editor">
    <form>
      <textarea id='edit' style="margin-top: 30px;">
      </textarea>

      <input type="submit">
    </form>
  </section>

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
