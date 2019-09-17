<#if (settings.scheme!'Paradox') == "Paradox">
    <!-- Paradox Post Header -->
    <#if (post.thumbnail!) == '' || !post.thumbnail??>
        <#if !(settings.thumbnail_purecolor?? && settings.thumbnail_purecolor!='')>
            <!-- Random Thumbnail -->
            <div class="post_thumbnail-random mdl-card__media mdl-color-text--grey-50">
            <#include "Paradox-post-thumbnail.ftl">
        <#else>
            <!-- Pure Thumbnail -->
            <div class="post_thumbnail-pure mdl-card__media mdl-color-text--grey-50" style="background-color:${settings.thumbnail_purecolor!} !important">
        </#if>
    <#else>
        <!-- Custom Thumbnail -->
        <div class="post_thumbnail-custom mdl-card__media mdl-color-text--grey-50" style="background-image:url(${post.thumbnail!})">
    </#if>
            <p class="article-headline-p">
                ${post.title}
            </p>
        </div>
</#if>

<#if (settings.scheme!'Paradox') == "Isolation">
    <!-- Isolation Post Header -->
    <!-- Post thumbnail -->
    <#if (post.thumbnail!) == '' || !post.thumbnail??>
        <!-- Post Header Info -->
        <div class="post-header_info without-thumbnail">
            <!-- Author Avatar & Name -->
            <img src="${user.avatar!}" class="avatar-img" width="44px" height="44px" alt="${user.nickname!}'s avatar">
            <span class="name-span">${user.nickname!}</span>
        </div>

        <!-- Null Thumbnail -->
        <div class="post_thumbnail-null">
    <#else>
        <!-- Post Header Info -->
        <div class="post-header_info with-thumbnail">
            <!-- Author Avatar & Name -->
            <img src="${user.avatar!}" class="avatar-img" width="44px" height="44px" alt="${user.nickname!}'s avatar">
            <span class="name-span">${user.nickname!}</span>
        </div>

        <!-- Custom thumbnail -->
        <div class="post_thumbnail-custom">
            <img src="${post.thumbnail!}">
    </#if>
        </div>
</#if>
