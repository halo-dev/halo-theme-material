<div id="post-content" class="mdl-color-text--grey-700 mdl-card__supporting-text fade out">
    <#if (settings.scheme!'Paradox') == "Paradox">
        ${post.formatContent!}
        <#if settings.other_post_license??>
                <blockquote style="margin: 2em 0 0;padding: 0.5em 1em;border-left: 3px solid #F44336;background-color: #F5F5F5;list-style: none;">
                    <p>
                        <strong>${settings.other_post_license!}</strong>
                        <br>
                        <strong>本文链接：</strong><a href="${context!}/archives/${post.url}">${context!}/archives/${post.url}</a>
                    </p>
                </blockquote>
        </#if>
    </#if>

    <#if (settings.scheme!'Paradox') == "Isolation">
        <div class="post-content_wrapper">
            <p class="post-title">
                ${post.title!}
            </p>
            ${post.formatContent!}
            <#if settings.other_post_license??>
                <blockquote>
                    <p>
                        <strong>${options.other_post_license!}</strong>
                        <br>
                        <strong>本文链接：</strong><a href="${context!}/archives/${post.url}">${context!}/archives/${post.url}</a>
                    </p>
                </blockquote>
            </#if>
        </div>
    </#if>
</div>
