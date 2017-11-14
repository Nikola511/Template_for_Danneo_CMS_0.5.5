<div class="infos-title">{ou_title}</div> 
<form action="{site_url}/index.php?dn=user" method="post"> 
<div class="form-area">
    <label for="nlogin">{login}<i></i></label>
    <input class="width" name="login" id="nlogin" size="25" type="text" maxlength="{maxname}" required>
        <div class="clear-line"></div>  
    <label for="npassw">{pass}<i></i></label>
    <input class="width" name="passw" id="npassw" size="25" type="password" maxlength="{maxpass}" required>
        <div class="clear-line"></div>
    <div class="send">
    <input name="re" value="login" type="hidden" />
    <input name="to" value="check" type="hidden" />
    {redirect}
    <button type="submit" class="sub send-but"><span>{enter}</span></button>
</div>
<div class="form-area-apart send">
   <p class="user norm"><a rel="nofollow" href="{site_url}/{linklost}" title="{send_pass}">{send_pass}</a></p>
   <p class="user norm"><a rel="nofollow" href="{site_url}/{linkreg}" title="{registr}">{registr}</a></p>
</div>
</form>
</div>
