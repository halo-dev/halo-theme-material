<#include "layout/layout.ftl">
<@layout title="分类目录：${category.name!} ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/categories/${category.slugName!}">
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
        <@nav url="${context!}/categories/${category.slugName!}/"></@nav>
        <#if (settings.scheme!'Paradox') == "Paradox">
            <#include "layout/_partial/Paradox-post_entry-thumbnail.ftl">
        </#if>
    </div>
</@layout>

