<script>
$(document).ready(function() {
    $('#refresh').click(function() {
        var t = new Date().getTime();
        $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
    });
    $('#captcha, #respon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); }); 
});
</script>
<form action="{site_url}/index.php?dn=user" method="post">
<div class="form-area">  
    <div class="form-area-cont">
    <label for="reglogin">{login}<i></i></label>
    <input class="width" name="reglogin" id="reglogin" size="30" type="text" maxlength="{maxname}" required>
        <div class="clear-line"></div> 
    <label for="regpassw">{pass}<i></i></label>
    <input class="width" name="regpassw" id="regpassw" size="30" type="password" maxlength="{maxpass}" required>
        <div class="clear-line"></div>
    <label for="regpasswconfir">{re_pass}<i></i></label>
    <input class="width" name="regpasswconfir" id="regpasswconfir" size="30" type="password" maxlength="{maxpass}" required>
        <div class="clear-line"></div>
    <label for="regmail">{e_mail}<i></i></label>
    <input class="width" name="regmail" id="regmail" size="30" type="text" required>
        <div class="clear-line"></div>
    <label for="regmailconfir">{re_e_mail}<i></i></label>
    <input class="width" name="regmailconfir" id="regmailconfir" size="30" type="text" required>
        <div class="clear-line"></div>
    <!--if:captcha:yes-->
        <div class="clear-line"></div>
    <label for="captcha" class="spec" title="Введите цифры на изоражении">Проверочный код<b></b></label>
    <table class="captcha">
    <tbody>
        <tr>
            <td><input id="captcha" name="captcha" type="text" maxlength="5" required></td>
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
        <input class="width" id="respon" name="respon" size="30" type="text" required>
        <input name="cid" type="hidden" value="{cid}" />
    <!--if--> 
        <div class="clear-line"></div>
    <div class="send">
        <input name="re" value="register" type="hidden" />
        <input name="to" value="check" type="hidden" />
        <button type="submit" class="sub send-but"><span>{further}</span></button>
    </div> 
    </div>
</div>
</form>
