<#include "layout/layout.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
        <#if (settings.scheme!'Paradox') == "Paradox" && posts.number==0 && is_index??>
            <!-- Paradox Header -->
            <#include "layout/_partial/daily_pic.ftl">
            <#include "layout/_partial/blog_info.ftl">
        </#if>
        <div class="locate-thumbnail-symbol"></div>

        <!-- Normal Post -->
        <#if (settings.scheme!'Paradox') == "Paradox">
            <!-- Paradox Thumbnail -->
            <#include "layout/_partial/Paradox-post_entry.ftl">
        <#else>
            <!-- Isolation Thumbnail -->
            <#include "layout/_partial/Isolation-post_entry.ftl">
        </#if>
        <!-- Index nav -->
        <#include "layout/_partial/index-nav.ftl">
        <@nav url="${context!}/"></@nav>
        <#if (settings.scheme!'Paradox') == "Paradox">
            <#include "layout/_partial/Paradox-post_entry-thumbnail.ftl">
        </#if>
    </div>
</@layout>

