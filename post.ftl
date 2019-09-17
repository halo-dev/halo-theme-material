<#include "module/macro.ftl">
<@layout title="${post.title!} | ${options.blog_title!}" keywords="${options.seo_keywords!},${tagWords!}" description="${post.summary!}">
    <!-- Post Module -->
    <div class="material-post_container">
        <div class="material-post mdl-grid">
            <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col">

                <!-- Post Header(Thumbnail & Title) -->
                <#include "_partial/post-header.ftl">

                <#if (settings.scheme!'Paradox') == "Paradox">
                <!-- Paradox Post Info -->
                <#include "_partial/Paradox-post-info.ftl">
                </#if>

                <!-- Post Content -->
                <#include "_partial/post-content.ftl">

                <#if (settings.scheme!'Paradox') == "Isolation">
                <#include "_partial/Isolation-post-info.ftl">
                </#if>

                <#include "_partial/comment.ftl">
                <@comment post=post type="post" />
            </div>
            <!-- Post Prev & Next Nav -->
            <#include "_partial/post-nav.ftl">
        </div>
    </div>
</@layout>
