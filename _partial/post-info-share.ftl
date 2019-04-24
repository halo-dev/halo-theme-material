<button id="article-fuctions-share-button" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
    <i class="material-icons" role="presentation">share</i>
    <span class="visuallyhidden">share</span>
</button>
<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="article-fuctions-share-button">
    <!-- Share Weibo -->
    <#if settings.sns_share_weibo!true>
    <a class="post_share-link" href="http://service.weibo.com/share/share.php?appkey=&title=${post.title}&url=${options.blog_url}/archives/${post.url}&pic=&searchPic=false&style=simple" target="_blank">
        <li class="mdl-menu__item">
            分享到Weibo
        </li>
    </a>
    </#if>

    <!-- Share Twitter -->
    <#if settings.sns_share_twitter!true>
    <a class="post_share-link" href="https://twitter.com/intent/tweet?text=${post.title}&url=<${post.title}&url=${options.blog_url}/archives/${post.url}&via=${user.nickName!'Halo'}" target="_blank">
        <li class="mdl-menu__item">
            分享到Twitter
        </li>
    </a>
    </#if>

    <!-- Share Facebook -->
    <#if settings.sns_share_facebook!true>
    <a class="post_share-link" href="https://www.facebook.com/sharer/sharer.php?u=${options.blog_url}/archives/${post.url}" target="_blank">
        <li class="mdl-menu__item">
            分享到FaceBook
        </li>
    </a>
    </#if>

    <!-- Share Google+ -->
    <#if settings.sns_share_googleplus!true>
    <a class="post_share-link" href="https://plus.google.com/share?url=${options.blog_url}/archives/${post.url}" target="_blank">
        <li class="mdl-menu__item">
            分享到Google+
        </li>
    </a>
    </#if>

    <!-- Share LinkedIn -->
    <#if settings.sns_share_linkedin!true>
    <a class="post_share-link" href="https://www.linkedin.com/shareArticle?mini=true&url=${options.blog_url}/archives/${post.url}&title=${post.title}" target="_blank">
        <li class="mdl-menu__item">
            分享到LinkedIn
        </li>
    </a>
    </#if>

    <!-- Share QQ -->
    <#if settings.sns_share_qq!true>
    <a class="post_share-link" href="http://connect.qq.com/widget/shareqq/index.html?site=${options.blog_title!}&title=${post.title}&summary=${post.summary!}&pics=&url=${options.blog_url}/archives/${post.url}" target="_blank">
        <li class="mdl-menu__item">
            分享到QQ
        </li>
    </a>
    </#if>

    <!-- Share Telegram -->
    <#if settings.sns_share_telegram!true>
    <a class="post_share-link" href="https://telegram.me/share/url?url=${options.blog_url}/archives/${post.url}&text=${post.title}" target="_blank">
        <li class="mdl-menu__item">
            分享到Telegram
        </li>
    </a>
    </#if>
</ul>
