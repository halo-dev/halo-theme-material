<button id="article-functions-qrcode-button" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
    <i class="material-icons" role="presentation">devices other</i>
    <span class="visuallyhidden">devices other</span>
</button>
<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="article-functions-qrcode-button">
    <li class="mdl-menu__item">在其它设备中阅读本文章</li>
    <img src="//qr.topscan.com/api.php?text=${context!}/archives/${post.url!}" width="246" height="246">
</ul>
