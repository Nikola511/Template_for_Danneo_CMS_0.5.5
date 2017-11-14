<script>
    $(document).ready(function() {
        jQuery.broken = function(url){
            window.location.href = url;
        }
    });
</script>
<!--buffer:thumb:0--><div class="thumb {float}">{thumb}</div><!--buffer-->
<div class="cont">
    <div class="conttitle">
        <div class="time"><img src="{site_url}/temp/{site_temp}/images/time.png" alt="" /> {time}</div><h3>{title}</h3>
    </div>
    <div class="conttext">
        {image}{text}
        {textmore}
        <div class="clear"></div>
        {textnotice}
    </div>
    <!--if:viewuser:no-->
    <div class="conttext ac" id="pload">{load} {broken}</div>
    <!--if-->
    <!--if:viewuser:yes-->
    <div class="conttext ac" id="pload"><a class="load" href="{linkreg}">{uo}</a></div>
    <!--if-->
    <div class="clear-line"></div>
</div>
<div id="cont-details">
    <table class="details">
    <tbody>
        <tr>
            <td class="details-one va">{langhits}:</td>
            <td class="details-two">{counts}</td>
        </tr>
        <tr>
            <td class="details-one va">{langtrans}:</td>
        <td class="details-two">{downs}</td>
        </tr>
        <!--if:mirror:yes-->
        <tr>
            <td class="details-one va">{langmir}:</td>
            <td class="details-two">{mirrors}</td>
        </tr>
        <!--if-->
        <!--if:tags:yes-->
        <tr>
            <td class="details-one va">{langtags}</td>
            <td class="details-two">{tags}</td>
        </tr>
        <!--if-->
        <!--if:rate:yes-->
        <tr>
            <td class="details-one va">{langrate}:</td>
            <td class="details-two">
                <div id="view-rate"><div class="right">{rating} / {totalrating} ( <span class="colorize">{countrating}</span> )</div>{valrate}</div>
                <div id="view-progress" style="display:none"><img src="{site_url}/temp/{site_temp}/images/progress.gif" alt="" /></div>
                <!--if:formrate:yes-->{formrate}<!--if-->
            </td>
        </tr>
        <!--if-->
        <!--if:version:yes-->
        <tr>
            <td class="details-one">{langversion}</td>
            <td class="details-two">{valversion}</td>
        </tr>
        <!--if-->
        <!--if:auth:yes-->
        <tr>
            <td class="details-one">{langauth}</td>
            <td class="details-two">{valauth}</td>
        </tr>
        <!--if-->
        <!--if:mail:yes-->
        <tr>
            <td class="details-one">E-Mail:</td>
            <td class="details-two">{valmail}</td>
        </tr>
        <!--if-->
        <!--if:type:yes-->
        <tr>
            <td class="details-one">{langtype}</td>
            <td class="details-two">{valtype}</td>
        </tr>
        <!--if-->
        <!--if:size:yes-->
        <tr>
            <td class="details-one">{langsize}</td>
            <td class="details-two">{valsize}</td>
        </tr>
        <!--if-->
    </tbody>
    </table>
</div>
<div class="clear-line"></div>
<!--if:social:yes-->
<div class="social">{social}</div>
<div class="clear-line"></div>
<!--if-->
{search}
<script src="{site_url}/temp/{site_temp}/javascript/jquery.colorbox.js"></script>
<script>
$(document).ready(function() {
    $("a:has(img)").each(function(index, obj) {
        if ($(obj).attr("class") == 'colorbox-image') {
            var $boximg = $(obj).children(0);
            if ($boximg.attr("longdesc").match(/\.(?:jpe?g|gif|png|bmp)/i) || $boximg.attr("longdesc").match(/(image)/i)) {
                $(obj).colorbox({
                    scrolling : false,
                    rel : $(obj).attr("rel"),
                    href : $boximg.attr("longdesc"),
                    /* title : $boximg.attr("alt"), */
                    transition : "elastic",
                    current : "{current} / {total}"
                });
            }
        }
    });
});
</script>
<!--if:media:yes-->
<div id="content">
    {media}
</div>
<!--if-->
<div class="clear-line"></div>
{recommend}
