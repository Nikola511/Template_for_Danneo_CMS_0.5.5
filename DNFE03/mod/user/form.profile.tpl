<script>
$(document).ready(function() {
   $(".tab-content").hide();
   $("ul.tabs li:first").addClass("active").show();
   $(".tab-content:first").show();
   $("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tab-content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		return false;
	});
});
</script>
<ul class="tabs">
 <li><a href="#tab1">{user_data}</a></li>
 <!--if:editpass:yes--><li><a href="#tab2">{chang_pass}</a></li><!--if-->
 <!--if:editmail:yes--><li><a href="#tab3">{chang_email}</a></li><!--if-->
</ul>
<div class="clear"></div>
<div class="btop-null form-area">
    <div class="tab-content" id="tab1">
    <form action="{site_url}/index.php?dn=user" method="post">  
        <label for="icq">ICQ<i></i></label>
        <input name="edit[icq]" id="icq" maxlength="15" type="text" value="{icq}" />
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{icq_hint}" />
        <div class="clear-line"></div> 
        
        <label for="msn">MSN<i></i></label>
        <input name="edit[msn]" id="msn" type="text" maxlength="50" value="{msn}" />
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{msn_hint}" />
        <div class="clear-line"></div>
        
        <label for="www">URL<i></i></label>
        <input name="edit[www]" id="www" type="text" maxlength="50" value="{url}" />
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{www_hint}" />
        <div class="clear-line"></div>
        
        {addit_fields}
        
        <!--buffer:field:0-->
        <label>{name}<b></b></label>{field}
        <div class="clear-line"></div>
        <!--buffer-->
        <!--buffer:apart:0-->
        <div class="send">{name}</div>
        <!--buffer-->
        <div class="send">
            <input name="to" value="redata" type="hidden" />
            <button type="submit" class="sub send-but2" ><span>{up_data}</span></button>
        </div>
    </form>
    </div>
    <!--if:editpass:yes-->
    <div class="tab-content" id="tab2">
    <form action="{site_url}/index.php?dn=user" method="post"> 
        <label for="onepassw">{pass}<i></i></label>
        <input name="onepassw" id="onepassw" size="30" type="password" maxlength="{maxpass}" required>
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{pass_hint}" />
        <div class="clear-line"></div>
         
        <label for="twopassw">{re_pass}<i></i></label>
        <input name="twopassw" id="twopassw" size="30" type="password" maxlength="{maxpass}" required>
        <div class="clear-line"></div>
         
        <div class="send">
            <input name="to" value="repassw" type="hidden" />
            <button type="submit" class="sub send-but2"><span>{chang_button_pass}</span></button>
        </div>
    </form>
    </div>
    <!--if-->
    <!--if:editmail:yes-->
    <div class="tab-content" id="tab3">
    <form action="{site_url}/index.php?dn=user" method="post"> 
        <label for="onemail">{e_mail}<i></i></label>
        <input name="edit[onemail]" id="onemail" size="30" type="text" maxlength="255" value="{umail}" required>
        <img src="{site_url}/temp/{site_temp}/images/qicon.gif" alt="{mail_hint}" />
        <div class="clear-line"></div>
         
        <label for="twomail">{re_e_mail}<i></i></label>
        <input name="edit[twomail]" id="twomail" size="30" type="text" maxlength="255" value="{umail}" required>
        <div class="clear-line"></div>
         
        <div class="send">
            <input name="to" value="remail" type="hidden" />
            <button type="submit" class="sub send-but2"><span>{chang_button_email}</span></button>
        </div>
    </form>
    </div>
    <!--if-->
</div>
