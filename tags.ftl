<#include "layout/layout.ftl">
<@layout title="标签云 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/tags">
    <#include "layout/_widget/page-tagcloud.ftl">
</@layout>

