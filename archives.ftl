<#include "layout/layout.ftl">
<@layout title="文章归档 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/archives">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
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
        <@nav url="${context!}/archives/"></@nav>
        <#if (settings.scheme!'Paradox') == "Paradox">
            <#include "layout/_partial/Paradox-post_entry-thumbnail.ftl">
        </#if>
    </div>
</@layout>

