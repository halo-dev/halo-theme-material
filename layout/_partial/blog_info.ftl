<!-- Blog info -->
<div class="mdl-card <#if settings.uiux_card_elevation??>mdl-shadow--${settings.uiux_card_elevation!2}dp</#if> something-else mdl-cell mdl-cell--8-col mdl-cell--4-col-desktop index-top-block">

    <!-- Search -->
    <#include "Paradox-search.ftl">

    <!-- LOGO -->
    <div class="something-else-logo mdl-color--white mdl-color-text--grey-600">
        <a href="${context!}" target="_blank">
            <img src="${options.blog_logo!'${static!}/source/img/logo.png'}" alt="logo" />
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
            <@menuTag method="list">
                <#list menus?sort_by("priority") as menu>
                    <a class="index_share-link" href="${menu.url}" title="${menu.name}">
                        <li class="mdl-menu__item mdl-js-ripple-effect">
                            ${menu.name}
                        </li>
                    </a>
                </#list>
            </@menuTag>
        </ul>

        <!-- Menu -->
        <button id="menubtn" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
            <i class="material-icons" role="presentation">more_vert</i>
            <span class="visuallyhidden">show menu</span>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="menubtn">

            <a class="index_share-link" href="/feed.xml">
                <li class="mdl-menu__item mdl-js-ripple-effect">
                    RSS 订阅
                </li>
            </a>

            <#if settings.sns_share_weibo!true>
                <a class="post_share-link" href="http://service.weibo.com/share/share.php?appkey=&title=${options.blog_title!}&url=${context!}&pic=${options.blog_favicon!}&searchPic=false&style=simple" target="_blank">
                    <li class="mdl-menu__item">
                        分享到微博
                    </li>
                </a>
            </#if>

            <!-- Share Twitter -->
            <#if settings.sns_share_twitter!true>
                <a class="post_share-link" href="https://twitter.com/intent/tweet?text=${options.blog_title!}&url=${context!}&via=${user.nickname!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 Twitter
                    </li>
                </a>
            </#if>

            <#if settings.sns_share_facebook!true>
                <a class="post_share-link" href="https://www.facebook.com/sharer/sharer.php?u=${context!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 Facebook
                    </li>
                </a>
            </#if>

            <#if settings.sns_share_googleplus!true>
                <a class="post_share-link" href="https://plus.google.com/share?url=${context!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 Google+
                    </li>
                </a>
            </#if>

            <#if settings.sns_share_linkedin!true>
                <a class="post_share-link" href="https://www.linkedin.com/shareArticle?mini=true&url=${context!}&title=${options.blog_title!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 LinkedIn
                    </li>
                </a>
            </#if>

            <!-- Share QQ -->
            <#if settings.sns_share_qq!true>
                <a class="post_share-link" href="http://connect.qq.com/widget/shareqq/index.html?site=${options.blog_title!}&title=${options.blog_title!}&summary=${options.seo_description!}&pics=${options.blog_favicon!}&url=${context!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 QQ
                    </li>
                </a>
            </#if>

            <#if settings.sns_share_telegram!true>
                <a class="post_share-link" href="https://telegram.me/share/url?url=${context!}&text=${options.blog_title!}" target="_blank">
                    <li class="mdl-menu__item">
                        分享到 Telegram
                    </li>
                </a>
            </#if>
        </ul>
    </div>
</div>
