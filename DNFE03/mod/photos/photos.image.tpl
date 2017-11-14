<script>
    $.copy = function(obj){
        $("#" + obj).focus(); 
        $("#" + obj).select();
    }
</script>
<table class="ac w100">
<tbody>
    <tr>
        <td class="tableod">
            <!--if:lightbox:yes-->
            <script src="{site_url}/temp/{site_temp}/javascript/jquery.colorbox.js"></script>
            <script>
                $(function() {
                    $("#image a").colorbox();
                });
            </script>
            <div id="image">
                <a href="{site_url}/{image}"><!--if--><!--if:image:yes--><img src="{site_url}/{image}" alt="{alt}"{imagesize} /><!--if--><!--if:lightbox:yes--></a>
            </div>
            <!--if-->
            <!--if:video:yes-->
            <object>
                <embed src="{site_url}/up/mediaplayer.swf" allowscriptaccess="always" allowfullscreen="true" flashvars="file={video}&amp;searchbar=false" width="400" height="350"></embed>
            </object>
            <!--if-->
        </td>
    </tr> 
</tbody>
</table> 
<table class="ac w100">
<tbody>
    <tr>
        <td class="tablein ac">{goback}</td>
        <td class="tablein ac w100"><strong>{count}</strong></td>
        <td class="tablein ac">{next}</td>
    </tr> 
</tbody>
</table> 
<div class="clear-line"></div>
<div id="cont-details">
<table class="details">
<tbody>
    <tr>
        <th class="details-one">{all_name}:</th>
        <th class="details-two"><span class="colorize">{title}</span></th>
    </tr>
    <tr>
        <td class="details-one">{all_data}:</td>
        <td class="details-two"><span class="time">{data}</span></td>
    </tr>
    <tr>
       <td class="details-one">{descript}:</td>
        <td class="details-two">{text}</td>
    </tr>
    <!--if:rate:yes-->
    <tr>
        <td class="details-one va">{all_rating}:</td>
        <td class="details-two">
            <div id="view-rate"><div class="right">{rating} / {totalrating} ( <span class="colorize">{countrating}</span> )</div>{valrate}</div>
            <div id="view-progress" style="display:none"><img src="{site_url}/temp/{site_temp}/images/progress.gif" alt="" /></div>
            <!--if:formrate:yes-->{formrate}<!--if-->
        </td>
    </tr>
    <!--if-->
    <tr>
        <td class="details-one">{langhits}:</td>
        <td class="details-two"><strong>{hits}</strong></td>
    </tr>
    <tr>
        <td class="details-one">
            <a href="javascript:$.copy('copylink');" onclick="$.copy('copylink');">Прямая ссылка</a>
        </td>
        <td class="details-two">
            <input id="copylink" value="{link}" class="width" readonly="readonly" type="text" />
        </td>
    </tr>
    <tr>
        <td class="details-one">
            <a href="javascript:$.copy('copycode');" class="width" onclick="$.copy('copycode');">HTML код</a>
        </td>
        <td class="details-two">
            <textarea id="copycode" class="width" readonly="readonly">&lt;a href=&quot;{link}&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;{imgurl}&quot; border=&quot;0&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;</textarea>
        </td>
    </tr>
    <tr>
        <td class="details-one none">
            <a href="javascript:$.copy('copybbcode');" onclick="$.copy('copybbcode');">BB код</a>
        </td>
        <td class="details-two none">
            <textarea id="copybbcode" class="width" readonly="readonly">[url={link}][img]{imgurl}[/img][/url]"</textarea>
        </td>
    </tr> 
</tbody>
</table>
</div>
<div class="clear-line"></div> 
<!--if:social:yes-->
<div class="social">{social}</div>
<div class="clear-line"></div>
<!--if-->
<table class="ac w100">
<tbody>
    <tr>
        <td class="tablein ac">{goback}</td>
        <td class="tablein ac w100"><strong>{count}</strong></td>
        <td class="tablein ac">{next}</td>
    </tr>
    <tr>
        <td colspan="3" class="tablein ac">{view}</td>
    </tr>
</tbody>
</table>
