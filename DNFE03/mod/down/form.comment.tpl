<script src="{site_url}/javascript/jquery.form.js"></script>
<script>
  $(document).ready(function() {
      $.last = {last};
      {smiliearray}
      {template}
  	  $("#comtext").comment({activejs});
  	  $('#comtext').textarearesizer();
  	  $('#refresh').click(function() {
         var t = new Date().getTime();
         $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
      });
      $('#commment-form').submit(function() {
         $('#commment-form input, textarea').removeClass('error-input').addClass('width');
         $error = false;
         $.check = new Array();
         $.check['comname'] = new Array('comname',{comname});
         $.check['comtext'] = new Array('comtext',{comsize});
         <!--if:captcha:yes-->$.check['captcha'] = new Array('captcha',5);<!--if-->
         <!--if:control:yes-->$.check['respon'] = new Array('respon',0);<!--if-->
         for(i in $.check) {
             var id = $.check[i][0], val = $.check[i][1];
             if (val == 0) {
                if ($("#" + id) != "undefined" && $("#" + id).val().length == 0) {
                 	$error = true;
                 	$("#" + id).removeClass('width').addClass('error-input');
                 	$("#" + id).focus(function(){
                      $(this).removeClass('error-input').addClass('width');
                    });
                }
             }
             if (val > 0) {
                if ($("#" + id) != "undefined" && $("#" + id).val().length == 0 || $("#" + id) != "undefined" && $("#" + id).val().length > val) {
                 	$error = true;
                    $("#" + id).removeClass('width').addClass('error-input');
                    $("#" + id).focus(function(){
                      $(this).removeClass('error-input').addClass('width');
                    });
                }
             }
         }
         if ($error) {
         	 return false;
         }
         <!--if:ajax:yes-->
         $('#sendbox').show();
         $("#errorbox").html('');
         var value = $(this).serialize();
          $.ajax({
           cache:false,
           type:'POST',
           url:'{site_url}/index.php?dn=down&re=comment&ajax=1&ct=' + $.last,
           data:value,
           error: function(data) { $('#commment-form').submit(); },
           success: function(data) {
             $("#sendbox").hide();
             if (data.match(/^<!--ok ([0-9]+)-->/)) {
                 var pt = data.match(/^<!--ok ([0-9]+)-->/);
                 if (pt) {
                 	$.last = pt[1];
                 }
                 $("#ajaxbox").append(data).show();
                 $("#comtext").attr({value:''});
                 if ($("#captcha") != "undefined") {
                  	 $("#captcha").attr({value:''});
                 }
             } else {
             	 $("#errorbox").html(data);
             }
          }
         })
        return false;
        <!--if-->
      });
    $('#captcha, #respon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); });
  });
</script>
<div class="commentsend" id="sendbox" style="display:none">
    <img src="{site_url}/temp/{site_temp}/images/progress.gif" alt="{all_sends}" /> <span class="sendtext">{all_sends}...</span>
</div>
<form action="{site_url}/index.php?dn=down&amp;re=comment" method="post" id="commment-form">
<div class="comment"> 
    <label for="comname">{comment_name}<i></i></label>
    <input class="width" name="comname" id="comname" type="text" value="{uname}" />
        <div class="clear-line"></div>
    <label for="comtext" class="spec">{all_text}<i></i></label>
    <textarea class="width" rows="7" name="comtext" id="comtext"></textarea>
    <!--if:captcha:yes-->
        <div class="clear-line"></div>
    <label for="captcha" class="spec" title="Введите цифры на изоражении">Проверочный код<b></b></label>
    <table class="captcha">
    <tbody>
        <tr>
            <td><input style="width: 150px" id="captcha" name="captcha" type="text" maxlength="5" value="" /></td>
            <td><div id="divcaptcha"><img src="{site_url}/image.php?to=captcha" alt="" /></div></td>
            <td><img id="refresh" src="{site_url}/temp/{site_temp}/images/refresh.gif" alt="{all_refresh}" /></td>
        </tr>
    </tbody>
    </table>
    <!--if-->
    <!--if:control:yes-->
        <div class="clear-line"></div>
    <label for="respon" class="spec" title="Ответьте на вопрос">{control_word}<b></b></label>
        <p>{control}</p>
        <input class="width" id="respon" name="respon" size="30" type="text" maxlength="255" value="" />
        <input name="cid" type="hidden" value="{cid}" />
    <!--if-->
    <div class="send">
        <input name="id" value="{id}" type="hidden" />
        <button type="submit" class="sub send-but"><span>{comment_add_button}</span></button>
    </div>
        <div class="clear"></div>
</div>
</form>
