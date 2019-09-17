<#include "layout/layout.ftl">
<@layout title="${post.title!} | ${options.blog_title!}" keywords="${options.seo_keywords!},${tagWords!}" description="${post.summary!}" canonical="${context!}/s/${post.url!}">
    <!-- Post Module -->
    <div class="material-post_container">

        <div class="material-post mdl-grid">
            <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col">

                <!-- Post Header(Thumbnail & Title) -->
                <#include "layout/_partial/post-header.ftl">

                <#if (settings.scheme!'Paradox') == "Paradox">
                    <!-- Paradox Post Info -->
                    <#include "layout/_partial/Paradox-post-info.ftl">
                </#if>

                <!-- Post Content -->
                <#include "layout/_partial/post-content.ftl">

                <#if (settings.scheme!'Paradox') == "Isolation">
                    <!-- Paradox Post Info -->
                    <#include "layout/_partial/Isolation-post-info.ftl">
                </#if>

                <!-- Post Comments -->
                <#include "layout/_partial/comment.ftl">
                <@comment post=sheet type="sheet" />
            </div>
        </div>
    </div>
</@layout>