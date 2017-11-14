<script>
$(document).ready(function() {
    $('#refresh').click(function() {
        var t = new Date().getTime();
        $('#divcaptcha').html('<img src="{site_url}/image.php?to=captcha&t=' + t + '" alt="" />');
    });
    $('#captcha, #respon').focus(function () { $(this).select(); }).mouseup(function(e){ e.preventDefault(); }); 
});
</script>
<form action="{site_url}/index.php?dn=subscribe" method="post">
<div class="forms">
    <div class="form-area-cont">
    <label for="sname">{subscribe_your_name}<i></i></label>
        <input class="w290" name="subname" id="sname" type="text" required>
        <div class="clear-line"></div>
    <label for="smail">{subscribe_your_mail}<i></i></label>
        <input class="w290" name="submail" id="smail" type="text" required>
        <div class="clear-line"></div>
    <label for="sformat">{subscribe_your_format}<i></i></label>
        <select class="w299" name="subformat" id="sformat">
            <option value="0" selected="selected">Text</option>
            <option value="1">Html</option>
        </select>
        <div class="clear-line"></div>
    <!--if:captcha:yes-->
        <div class="clear-line"></div>
    <label for="captcha" class="spec" title="¬ведите цифры">Captcha<b></b></label>
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
    <label for="respon" class="spec" title="ќтветьте на вопрос">{control_word}<b></b></label>
        <p>{control}</p>
        <input class="w290" id="respon" name="respon" size="30" type="text" required>
        <input name="cid" type="hidden" value="{cid}" />
    <!--if--> 
        <div class="clear-line"></div>
    <div class="send">
        <input name="to" type="hidden" value="check" />
        <button type="submit" class="sub send-but"><span>{subscribe_button}</span></button>
    </div>
    <div class="clear"></div>
    </div>
</div>
</form>
