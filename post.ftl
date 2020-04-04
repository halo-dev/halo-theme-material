<#include "layout/layout.ftl">
<@layout title="${post.title!} | ${blog_title!}" canonical="${post.fullPath!}">
    <!-- Post TOC -->
    <#if post.topPriority?? && post.topPriority!=0>
        <#include "layout/_partial/toc_button.ftl">
    </#if>

    <!-- Post Module -->
    <div class="material-post_container">

        <div class="material-post mdl-grid">
            <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col">

                <!-- Post Header(Thumbnail & Title) -->
                <#include "layout/_partial/post-header.ftl">

                <!-- Paradox Post Info -->
                <#include "layout/_partial/Paradox-post-info.ftl">
                <!-- Post Content -->
                <#include "layout/_partial/post-content.ftl">

                <!-- Post Comments -->
                <#include "layout/_partial/comment.ftl">
                <@comment post=post type="post" />
            </div>

            <!-- Post Prev & Next Nav -->
            <#include "layout/_partial/post-nav.ftl">
        </div>
    </div>
</@layout>