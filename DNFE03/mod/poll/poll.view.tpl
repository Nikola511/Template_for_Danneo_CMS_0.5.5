<div class="cont">
    <div class="conttext">{desc}</div>
    <div class="cont">
        <div class="poll-conttext ac">
            <table class="poll">
                {percent}
            </table>
        </div>
    </div>
    <div class="conttext">
        <div class="infos">{message}</div>
    </div>
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
