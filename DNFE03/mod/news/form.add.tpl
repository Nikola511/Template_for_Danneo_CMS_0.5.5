<script src="{site_url}/javascript/jquery.form.js"></script>
<script>
$(document).ready(function() {
    $('#text').textarearesizer();
    $('#refresh').click(function() {
        var t = new Date().getTime();
        $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
    }); 
    $('#captcha, #respon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); });
});
</script>
<form action="{site_url}/index.php?dn=news" method="post">
<div class="comment"> 
    <label for="title">{title}<i></i></label>
        <input class="width" name="title" id="title" maxlength="255" type="text" required>
        <div class="clear-line"></div>
    <label for="catid">{in_cat}<b></b></label>
        <select class="width" name="catid" id="catid">
        {sel}
        </select>
        <div class="clear-line"></div>
    <label for="text">{text}<i></i></label>
        <textarea class="width" cols="60" rows="10" id="text" name="text" required></textarea>
        <div class="clear-line"></div> 
    <label for="image" title="{link_img_big}">Большое фото<u></u></label>
        <input class="width" name="image" id="image" maxlength="255" type="text" />
        <div class="clear-line"></div>
    <label for="thumb" title="{link_img_small}">Уменьшенное фото<u></u></label>
        <input class="width" name="image_thumb" id="thumb" maxlength="255" type="text" />
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
    <div class="send">
        <input name="re" value="add" type="hidden" />
        <input name="to" value="save" type="hidden" />
        <button type="submit" class="sub send-but"><span>{all_add}</span></button>
    </div>
    <div class="clear"></div>
</div>
</form>
