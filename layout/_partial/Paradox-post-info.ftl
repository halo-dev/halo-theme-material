<div class="mdl-color-text--grey-700 mdl-card__supporting-text meta">

    <!-- Author Avatar -->
    <div id="author-avatar">
        <img src="${user.avatar!'${static!}/source/img/avatar.png'}" width="44px" height="44px" alt="Author Avatar"/>
    </div>
    <!-- Author Name & Date -->
    <div>
        <strong>${user.nickname!}</strong>
        <span>${post.createTime?string("MM月 dd,yyyy")}</span>
    </div>

    <div class="section-spacer"></div>

    <!-- Favorite -->
    <!--
        <button id="article-functions-like-button" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon btn-like">
            <i class="material-icons" role="presentation">favorite</i>
            <span class="visuallyhidden">favorites</span>
        </button>
    -->

    <!-- Qrcode -->
    <#if settings.post_qrcode_enable!true>
        <#include "../_widget/qrcode.ftl">
    </#if>

    <!-- Tags (bookmark) -->
    <#if post.tags?? && post.tags?size gt 0>
    <button id="article-functions-viewtags-button" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
        <i class="material-icons" role="presentation">bookmark</i>
        <span class="visuallyhidden">bookmark</span>
    </button>
    <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="article-functions-viewtags-button">
        <#list post.tags as tag>
            <li class="mdl-menu__item">
                <a class="post_tag-link" href="${context!}/tags/${tag.slugName}/">${tag.name}</a>
            </li>
        </#list>
    </ul>
    </#if>

    <!-- Share -->
    <#include "../_partial/post-info-share.ftl">
</div>
