<form action="{site_url}/index.php?dn=user" method="post">
<div class="form-area">
    <label for="slogin">{login}<i></i></label>
        <input class="sinput" name="login" id="slogin" size="35" type="text" maxlength="{maxname}" required>
        <div class="clear-line"></div> 
    <label for="spassw">{pass}<i></i></label>
        <input class="sinput" name="passw" id="spassw" size="35" type="password" maxlength="{maxpass}" required>
        <div class="clear-line"></div>
    <div class="send"> 
            <input name="re" value="login" type="hidden" />
            <input name="to" value="check" type="hidden" /> 
            <button type="submit" class="sub send-but"><span>{enter}</span></button>
    </div>
    <div class="send"> 
            <p class="user"><a href="index.php?dn=user&amp;re=login&amp;to=lost" title="{send_pass}" rel="nofollow">{send_pass}</a></p>
            <p class="user"><a href="{reglink}" title="{registr}" rel="nofollow">{registr}</a></p>
    </div>
</div>
</form>
