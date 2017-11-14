<!--buffer:thumb:0--><div class="thumb {float}">{thumb}</div><!--buffer-->
<div class="cont">
    <div class="conttitle">
        <h3>{title}</h3>
    </div>
    <div class="conttext">
        {image}{text}
        {textmore}
        <div class="clear"></div>
        {textnotice}
    </div>
    <!--if:video:yes-->
    <div class="conttext ac">
        <object>
            <embed src="{url}/up/mediaplayer.swf" allowscriptaccess="always" allowfullscreen="true" flashvars="file={video}&amp;searchbar=false" width="400" height="350"></embed>
        </object>
    </div>
    <!--if-->
    <div class="continfo">
        <!-- {public}: --> {time} <i>/</i> {hits}: {counts} <i>/</i> <!--if:print:yes-->{print}<!--if-->
    </div>
    <div class="continfo">
        <!--if:social:yes-->
        <div class="left social">
            {social}
        </div>
        <!--if-->
        {langtags} {tags}
        <div class="clear"></div>
    </div>
</div>
{search}
<script src="{url}/temp/{site_temp}/javascript/jquery.colorbox.js"></script>
<script>
$(document).ready(function() {
    $("a:has(img)").each(function(index, obj) {
        if ($(obj).attr("class") == 'colorbox-image') {
        var $boximg = $(obj).children(0);
            if ($boximg.attr("longdesc").match(/\.(?:jpe?g|gif|png|bmp)/i) || $boximg.attr("longdesc").match(/(image)/i)) {
                $(obj).colorbox({  scrolling : false,
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
<div class="clear-line"></div><br>
