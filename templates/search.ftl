<#include "layout/layout.ftl">
<@layout title="搜索：${keyword} | ${blog_title!}" canonical="${blog_url!}/search">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
        <div class="locate-thumbnail-symbol"></div>

        <!-- Normal Post -->
        <!-- Paradox Thumbnail -->
        <#include "layout/_partial/Paradox-post_entry.ftl">
        <!-- Index nav -->
        <#if posts.totalElements gt 0>
            <nav class="material-nav mdl-cell mdl-cell--12-col">
                <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3"  keyword="${keyword!}">
                    <#if pagination.hasPrev>
                        <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                                <i class="material-icons" role="presentation">arrow_back</i>
                            </button>
                        </a>
                    </#if>
                    <span class="page-number current">${posts.number+1}</span>
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