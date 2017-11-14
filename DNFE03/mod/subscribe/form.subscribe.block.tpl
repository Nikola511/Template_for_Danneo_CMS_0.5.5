<script>
$(function(){
    $('#subrefresh').click(function() {
        var t = new Date().getTime();
        $('#subcapcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" border="0">');
    });
    $("#subname, #submail, #scaptcha, #srespon").textPlaceholder(); 
    $('#scaptcha, #srespon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); });
});
</script>
<form action="{site_url}/index.php?dn=subscribe" method="post">
    <fieldset class="standart">
        <input class="width" name="subname" id="subname" type="text" placeholder="{subscribe_your_name}" required>
    </fieldset>
    <fieldset class="standart">
        <input class="width" name="submail" id="submail" type="text" placeholder="{subscribe_your_mail}" required>
    </fieldset>
    <fieldset class="standart">
        <select name="subformat" class="width">
            <option value="0" selected="selected">{subscribe_your_format}</option>
            <option value="0">Text</option>
            <option value="1">Html</option>
        </select>
    </fieldset>
    <!--if:captcha:yes-->
    <fieldset class="standart">
        <input class="width" id="scaptcha" name="captcha" type="text" placeholder="Проверочный код" required>
        <div id="sbrcapcha">
            <div id="subcapcha"><img src="{site_url}/image.php?to=captcha" alt="" /></div>
            <img id="subrefresh" src="{site_url}/temp/{site_temp}/images/refresh.gif" alt="{all_refresh}" />
        </div>
    </fieldset>
    <!--if-->
    <!--if:control:yes-->
    <fieldset class="standart">
        <p>{control}</p>
        <p><input class="width" id="srespon" name="respon" size="30" type="text" placeholder="{control_word}" required></p>
        <input name="cid" type="hidden" value="{cid}" />
    </fieldset>
   <!--if-->
   <div class="pad ac">
       <input name="to" type="hidden" value="check" />
       <button type="submit" class="sub send-but"><span>{subscribe_button}</span></button>
   </div>
   <div class="clear"></div>
</form>
