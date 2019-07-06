<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <script src="//cdn.jsdelivr.net/gh/halo-dev/halo-comment@1.0.5/dist/halo-comment.min.js"></script>
        <div class="comment-wrapper" style="padding: 1pc;">
            <halo-comment id="${post.id}" type="${type}"/>
        </div>
    </#if>
</#macro>