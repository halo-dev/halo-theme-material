<div id="post-content" class="mdl-color-text--grey-700 mdl-card__supporting-text fade out">
    ${post.formatContent!}
    <#if settings.other_post_license??>
        <blockquote style="margin: 2em 0 0;padding: 0.5em 1em;border-left: 3px solid #F44336;background-color: #F5F5F5;list-style: none;">
            <p>
                <strong>${settings.other_post_license!}</strong>
                <br>
                <strong>本文链接：</strong><a href="${post.fullPath!}">${post.fullPath!}</a>
            </p>
        </blockquote>
    </#if>
</div>
