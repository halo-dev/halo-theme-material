<#include "layout/layout.ftl">
<@layout title="搜索：${keyword} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/search">
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
        <#if posts.totalElements gt 0>
            <nav class="material-nav mdl-cell mdl-cell--12-col">
                <#if posts.hasPrevious()>
                    <#if posts.number == 1>
                        <a class="extend prev" rel="prev" href="${context!}/search?keyword=${keyword}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    <#else >
                        <a class="extend prev" rel="prev" href="${context!}/search/page/${posts.number}?keyword=${keyword}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    </#if>
                </#if>
                <span class="page-number current">${posts.number+1}</span>
                <#if posts.hasNext()>
                    <a class="extend next" rel="next" href="${context!}/search/page/${posts.number+2}?keyword=${keyword}">
                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                            <i class="material-icons" role="presentation">arrow_forward</i>
                        </button>
                    </a>
                </#if>
            </nav>
        </#if>
        <#if (settings.scheme!'Paradox') == "Paradox">
            <#include "layout/_partial/Paradox-post_entry-thumbnail.ftl">
        </#if>
    </div>
</@layout>