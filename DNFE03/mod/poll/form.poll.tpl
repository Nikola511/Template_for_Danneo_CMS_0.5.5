<!--if:ajax:yes-->
<script>
  $(document).ready(function() {
    $('#poll-form').submit(function() {
      $('#pollsendbox').show();
      $("#pollerrorbox").html('');
      var value = $(this).serialize();
      $.ajax({
        cache:false,
        type:'POST',
        url:'{site_url}/index.php?dn=poll&re=add&ajax=1',
        data:value,
        error: function(data) { $('#poll-form').submit(); },
        success: function(data) {
          $("#pollsendbox").hide();
          if (data.match(/^<!--pollok ([0-9]+)-->/)) {
            $("#pollajaxbox").html(data);
          } else {
            $("#pollerrorbox").html(data);
          }
        }
      })
      return false;
    });
  });
</script>
<!--if-->
<div id="pollajaxbox">
    <form action="{site_url}/index.php?dn=poll" method="post" name="poll-form" id="poll-form">
    <div class="clear-line"></div>
    <div id="pollerrorbox"></div>
    <div id="pollsendbox" style="display:none;" class="infos">
        <img src="{site_url}/temp/{site_temp}/images/progress.gif" alt="{all_sends}" /> <strong>{all_sends} ... </strong>
    </div>
    <input name="id" value="{id}" type="hidden" />
    <input name="re" value="add" type="hidden" />
    <div class="cont">
        <div class="conttext">{desc}</div>
        <div class="poll-conttext">
            <table class="poll">
                {percent}
            </table>
        </div>
        <div class="conttext ac">
            <button type="submit" id="poll-button" class="sub"><span>{button}</span></button>
        </div>
    </div>
    </form>
</div>
<!--buffer:percent:0-->
    <tr>
        <td class="w25 black">{radio} <b>{val_name}</b></td>
        <td class="w15 gray">{val_voc}</td>
        <td class="w45">
            <div class="pollbarout" style="border-color: {val_color};">
                <div class="pollbar" style="background-color: {val_color}; width: {val_line};"></div>
            </div>
        </td>
        <td class="gray w15">{val_perc} %</td>
    </tr>
<!--buffer-->
