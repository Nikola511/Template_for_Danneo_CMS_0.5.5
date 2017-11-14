<script>
  $(document).ready(function() {
  	 jQuery.broken = function(url){
       window.location.href = url;
     }
  });
</script>
<div class="cont">
    <div class="conttitle">
        <h3>{title}</h3>
    </div>
    <div class="conttext">
        {image}{text}{textmore}
        <div class="clear"></div>
    </div>
    <div class="conttext">{jumplink}</div>
    <div class="continfo">
        <strong>{time}</strong> <i>/</i> {langhits}:<strong>{hits}</strong> <i>/</i> {langtrans}:<strong>{trans}</strong><!--if:broken:yes--> <i>/</i> {broken}<!--if-->
    </div>
</div>
