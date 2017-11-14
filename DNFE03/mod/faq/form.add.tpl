<script src="{site_url}/javascript/jquery.form.js"></script>
<script>
$(document).ready(function() {
    $('#faqask').textarearesizer();
    $('#refresh').click(function() {
        var t = new Date().getTime();
        $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
    });
});
</script>
<div class="clear-line"></div>
<div class="site-title"><h3>{faq_ask}</h3></div>
<form action="{site_url}/index.php?dn=faq" method="post">
<div class="comment">
    <label for="fauthor">{email_name}<i></i></label>
        <input class="width" name="faqauthor" id="fauthor" type="text" required>
        <div class="clear-line"></div> 
    <label for="fmail">E-Mail<i></i></label>
        <input class="width" name="faqmail" id="fmail" type="text" required>
        <div class="clear-line"></div>  
    <label for="catid">{in_cat}<b></b></label>
        <select class="width" name="catid" id="catid">
        {sel}
        </select>
        <div class="clear-line"></div> 
    <label for="faqask">{question}<i></i></label>
        <textarea class="width" cols="40" rows="7" id="faqask" name="faqask" required></textarea>
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
        <input class="width" id="respon" name="respon" size="30" required>
        <input name="cid" type="hidden" value="{cid}" />
    <!--if--> 
    <div class="send">
        <input name="re" type="hidden" value="add" />
        <button type="submit" class="sub send-but2"><span>{faq_ask}</span></button>
    </div>
    <div class="clear"></div>
</div> 
</form>
