<script>
$(document).ready(function() {
    $('#refresh').click(function() {
        var t = new Date().getTime();
        $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
    });
    $('#mcaptcha, #mrespon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); });
});
</script>
<form action="{site_url}/index.php?dn=mail" method="post">
<div class="forms">  
    <div class="form-area-cont">
    <label for="sendnames">{email_name}<i></i></label>
    <input class="width" name="sendnames" id="sendnames" type="text" value="{uname}" required>
        <div class="clear-line"></div>
    <label for="sendmails">{email}<i></i></label>
    <input class="width" name="sendmails" id="sendmails" type="text" value="{umail}" required>
        <div class="clear-line"></div>
    <label for="sendtexts">{email_text}<i></i></label>
    <textarea cols="40" class="width" rows="8" name="sendtexts" id="sendtexts" required></textarea>
    <!--if:captcha:yes-->
        <div class="clear-line"></div>
    <label for="mcaptcha" class="spec" title="Введите цифры на изоражении">Проверочный код<b></b></label>
    <table class="captcha">
    <tbody>
        <tr>
            <td><input name="captcha" id="mcaptcha" type="text" maxlength="5" required></td>
            <td><div id="divcaptcha"><img src="{site_url}/image.php?to=captcha" alt="" /></div></td>
            <td><img id="refresh" src="{site_url}/temp/{site_temp}/images/refresh.gif" alt="{all_refresh}" /></td>
        </tr>
    </tbody>
    </table>
    <!--if-->
    <!--if:control:yes-->
        <div class="clear-line"></div>
    <label for="mrespon" class="spec" title="Ответьте на вопрос">{control_word}<b></b></label>
        <p>{control}</p>
        <input class="width" id="mrespon" name="respon" size="30" type="text" required>
        <input name="cid" type="hidden" value="{cid}" />
    <!--if--> 
        <div class="clear-line"></div>
    <div class="send">
        <input name="to" type="hidden" value="send" />
        <button type="submit" class="sub send-but"><span>{email_send}</span></button>
    </div>
        <div class="clear"></div> 
    </div>
</div>
</form>
