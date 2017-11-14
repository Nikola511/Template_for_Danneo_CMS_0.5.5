<form action="{site_url}/index.php?dn=user" method="post">
<div class="clear-line"></div>
<div class="form-area">
    <label for="lostmail" title="{rest_pass_hint}">E-Mail<i></i></label>
    <input class="width" name="lostmail" id="lostmail" size="30" type="text" required>
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{rest_pass_hint}" />
        <div class="clear-line"></div>
    <div class="send">
        <input name="re" value="login" type="hidden" />
        <input name="to" value="send" type="hidden" />
        <button type="submit" class="sub send-but"><span>{send_pass}</span></button>
    </div>
    <div class="clear"></div>
</div>
</form>
