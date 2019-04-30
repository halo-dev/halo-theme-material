<!-- Blog info -->
<div class="mdl-card mdl-shadow--${settings.uiux_card_elevation!'2'}dp something-else mdl-cell mdl-cell--8-col mdl-cell--4-col-desktop index-top-block">

    <!-- Search -->
    <#include "Paradox-search.ftl">

    <!-- LOGO -->
    <div class="something-else-logo mdl-color--white mdl-color-text--grey-600">
        <a href="#" target="_blank">
            <img src="${options.blog_logo!'/${theme.folderName}/source/img/logo.png'}" alt="logo" />
        </a>
    </div>

    <!-- Infomation -->
    <div class="mdl-card__supporting-text meta meta--fill mdl-color-text--grey-600">
        <!-- Blog Title -->
        <div>
            <strong>${options.blog_title!}</strong>
        </div>
        <div class="section-spacer"></div>

        <!-- Pages -->
        <button id="show-pages-button" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
            <i class="material-icons" role="presentation">view_carousel</i>
            <span class="visuallyhidden">Pages</span>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="show-pages-button">
            <a class="index_share-link" href="${options.blog_url!}/tags" title="标签">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    标签
                </li>
            </a>
            <a class="index_share-link" href="/gallery" title="图库">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    图库
                </li>
            </a>
            <a class="index_share-link" href="/links" title="友链">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    友链
                </li>
            </a>
            <a class="index_share-link" href="/about" title="关于">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    关于
                </li>
            </a>
        </ul>

        <!-- Menu -->
        <button id="menubtn" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
            <i class="material-icons" role="presentation">more_vert</i>
            <span class="visuallyhidden">show menu</span>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="menubtn">
            <a class="index_share-link" href="/feed.xml">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    RSS订阅
                </li>
            </a>

            <#if settings.sns_share_weibo!true>
            <a class="post_share-link" href="http://service.weibo.com/share/share.php?appkey=&title=${options.blog_title!}&url=${options.blog_url!}&pic=${options.blog_favicon!}&searchPic=false&style=simple" target="_blank">
                <li class="mdl-menu__item">
                    分享到Weibo
                </li>
            </a>
            </#if>

            <!-- Share Twitter -->
            <#if settings.sns_share_twitter!true>
            <a class="post_share-link" href="https://twitter.com/intent/tweet?text=${options.blog_title!}&url=${options.blog_url!}&via=${user.nickName!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到Twitter
                </li>
            </a>
            </#if>

            <#if settings.sns_share_facebook!true>
            <a class="post_share-link" href="https://www.facebook.com/sharer/sharer.php?u=${options.blog_url!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到FaceBook
                </li>
            </a>
            </#if>

            <#if settings.sns_share_googleplus!true>
            <a class="post_share-link" href="https://plus.google.com/share?url=${options.blog_url!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到Google+
                </li>
            </a>
            </#if>

            <#if settings.sns_share_linkedin!true>
            <a class="post_share-link" href="https://www.linkedin.com/shareArticle?mini=true&url=${options.blog_url!}&title=${options.blog_title!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到LinkedIn
                </li>
            </a>
            </#if>

            <!-- Share QQ -->
            <#if settings.sns_share_qq!true>
            <a class="post_share-link" href="http://connect.qq.com/widget/shareqq/index.html?site=${options.blog_title!}&title=${options.blog_title!}&summary=${options.seo_description!}&pics=${options.blog_favicon!}&url=${options.blog_url!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到QQ
                </li>
            </a>
            </#if>

            <#if settings.sns_share_telegram!true>
            <a class="post_share-link" href="https://telegram.me/share/url?url=${options.blog_url!}&text=${options.blog_title!}" target="_blank">
                <li class="mdl-menu__item">
                    分享到Telegram
                </li>
            </a>
            </#if>
        </ul>
    </div>
</div>
