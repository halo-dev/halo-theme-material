<#include "layout/layout.ftl">
<@layout title="分类目录：${category.name!} | ${blog_title!}" canonical="${category.fullPath!}">
    <!-- Index Module -->
    <div class="material-index mdl-grid">
        <div class="locate-thumbnail-symbol"></div>

        <!-- Normal Post -->
        <!-- Paradox Thumbnail -->
        <#include "layout/_partial/Paradox-post_entry.ftl">
        <!-- Index nav -->
        <#if posts.totalPages gt 1 >
            <nav class="material-nav mdl-cell mdl-cell--12-col">
                <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
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

