<!DOCTYPE html>
<html lang="ru">
<head>  
<meta http-equiv="content-type" content="text/html; charset={langcharset}" />  
<title>{title}</title> 
<meta name="keywords" content="{keywords}" />
<meta name="description" content="{descript}" />
<meta name="generator" content="CMS Danneo {version}" />
<script src="{site_url}/javascript/jquery.js"></script>
<script src="{site_url}/javascript/jquery.colorbox.js"></script>
<script src="{site_url}/temp/{site_temp}/javascript/script.js"></script>
<link rel="stylesheet" href="{site_url}/temp/{site_temp}/css/screen.css" /> 
<link rel="stylesheet" href="{site_url}/temp/{site_temp}/css/menu.css" />
<link rel="stylesheet" href="{site_url}/temp/{site_temp}/javascript/colorbox/colorbox.css" />
<!--[if IE 6]>
<link rel="stylesheet" rel="stylesheet" href="{site_url}/temp/{site_temp}/javascript/colorbox/colorbox.ie.css" />
<![endif]-->     
<!--[if lte IE 8]>
<link rel="stylesheet" href="{site_url}/temp/{site_temp}/css/ie.css" />
<![endif]-->
<link rel="stylesheet" href="{site_url}/temp/{site_temp}/css/coda-slider.css" />
<link rel="alternate" type="application/rss+xml" title="{site}" href="{site_url}/rss.php?dn=news" />
<link rel="icon" href="{site_url}/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="{site_url}/favicon.ico" type="image/x-icon" />
<script>
$(function(){  
    $.url = '{site_url}';
    var url=document.location.href;
    $.each($("#block-menu a"),function(){
        if(this.href==url){$(this).addClass('act');};
    });
});
</script>    
</head>
<body>
<div id="main">  
    <div id="head">
        <div id="logo">
            <h1><a href="{site_url}/" title="{site}">{site}</a></h1> 
            <div class="topright">
                <p>тел: <span>(8-8362) 45-29-64</span></p>
            </div>
        </div> 
    </div>
    <div id="wrap">
        <div id="top-menu">
            {dnmtop}
        </div>
        <table id="table-cont">
            <tbody>
            <tr> 
                <td id="table-left">
                    {leftblock}
                </td>
                <td id="table-center">
                    <!--{banner}--> 
                     {promoblock}
                     {topblock}
                    <!--buffer:sitetitle:0--><div class="site-title"><h2>{title}</h2></div><!--buffer-->
                    <!--buffer:siterec:0--><div class="site-rec"><div class="site-rec-time"><img src="{site_url}/temp/{site_temp}/images/time.png" alt="" /> {time}</div>{link}</div><!--buffer-->
                    <!--buffer:pagesout:0--><div class="pages">{pages}</div><!--buffer-->
                    <!--buffer:ajaxbox:0--><div class="pad al" id="ajaxbox" style="display:none;"></div><!--buffer-->
                    <!--buffer:thumbs:0--><div class="{float}"><div class="thumb"><div class="thumb-river">{thumb}</div></div></div><!--buffer-->
                    {breadcrumb}
