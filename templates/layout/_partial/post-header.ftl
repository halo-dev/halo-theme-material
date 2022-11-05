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
                ${post.title!}
            </p>
        </div>