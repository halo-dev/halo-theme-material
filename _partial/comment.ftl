<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/gh/halo-dev/halo-comment@latest/dist/halo-comment.min.js'}"></script>
        <div class="comment-wrapper" style="padding: 1pc;">
            <halo-comment id="${post.id}" type="${type}"/>
        </div>
    </#if>
</#macro>