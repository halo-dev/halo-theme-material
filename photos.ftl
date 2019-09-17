<!DOCTYPE html>
<html style="display: none;" lang="zh">
    <#include "layout/_partial/head.ftl">
    <@head title="图库 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/photos"></@head>
    <#include "layout/_widget/page-gallery.ftl">
</html>
