<script>
$(document).ready(function() {
    $("#login, #passw").textPlaceholder();  
});
</script>
<form action="{site_url}/index.php?dn=user" method="post">
    <fieldset class="userblock">
        <input name="login" id="login" size="22" type="text" maxlength="{maxname}" placeholder="{login}" required>
    </fieldset>
    <fieldset class="userblock">
        <input name="passw" id="passw" size="22" type="password" maxlength="{maxpass}" placeholder="{pass}" required>
    </fieldset>
    <div class="user-link">
        <input name="re" value="login" type="hidden" />
        <input name="to" value="check" type="hidden" />
        <button type="submit" class="sub"><span>{enter}</span></button>
    </div>
    <div class="user-link">
        <p class="al user"><a href="{site_url}/{linklost}" title="{send_pass}" rel="nofollow">{send_pass}</a></p>
        <p class="al user"><a href="{site_url}/{linkreg}" title="{registr}" rel="nofollow">{registr}</a></p>
    </div>
</form>
