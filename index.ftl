<#include "layout/layout.ftl">
<@layout title="${blog_title!}" canonical="${blog_url!}">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
        <#if posts.number==0 && is_index??>
            <!-- Paradox Header -->
            <#include "layout/_partial/daily_pic.ftl">
            <#include "layout/_partial/blog_info.ftl">
        </#if>
        <div class="locate-thumbnail-symbol"></div>

        <!-- Normal Post -->
        <!-- Paradox Thumbnail -->
        <#include "layout/_partial/Paradox-post_entry.ftl">
        <!-- Index nav -->
        <#if posts.totalPages gt 1 >
            <nav class="material-nav mdl-cell mdl-cell--12-col">
                <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <#if pagination.hasPrev>
                        <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    </#if>
                    <#list pagination.rainbowPages as number>
                        <#if number.isCurrent>
                            <span class="page-number current">${number.page!}</span>
                        </#if>
                    </#list>
                    <#if pagination.hasNext>
                        <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_forward</i>
                            </button>
                        </a>
                    </#if>
                </@paginationTag>
            </nav>
        </#if>
        <#include "layout/_partial/Paradox-post_entry-thumbnail.ftl">
    </div>
</@layout>

