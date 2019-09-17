<#list posts.content as post>
<div class="post_entry-module mdl-card <#if settings.uiux_card_elevation??>mdl-shadow--${settings.uiux_card_elevation!'2'}dp</#if> mdl-cell mdl-cell--12-col fade out">
    <!-- Post_entry Header -->
    <#if !post.thumbnail?? || post.thumbnail==''>
        <!-- Post Header Info -->
        <div class="post_entry-header_info without-thumbnail">
            <!-- Author Avatar & Name -->
            <img src="${user.avatar!'${static!}/source/img/avatar.png'}" class="avatar-img" width="44px" height="44px" alt="${user.nickname!}'s avatar">
            <span class="name-span">${user.nickname!}</span>
        </div>

        <!-- Null Thumbnail -->
        <div class="post_thumbnail-null">
    <#else>
        <!-- Post Header Info -->
        <div class="post_entry-header_info with-thumbnail">
            <!-- Author Avatar & Name -->
            <img src="${user.avatar!'${static!}/source/img/avatar.png'}" class="avatar-img" width="44px" height="44px" alt="${user.nickname!}'s avatar">
            <span class="name-span">${user.nickname!}</span>
        </div>

        <!-- Custom thumbnail -->
        <div class="post_thumbnail-custom">
            <img src="${post.thumbnail!}">
    </#if>
        </div>

    <!-- Post_entry Content -->
    <div class="post_entry-content mdl-color-text--grey-600 mdl-card__supporting-text">
        <!-- Post Title -->
        <p class="post_entry-title">
            <a href="${context!}/archives/${post.url}"><#if post.topPriority?? && post.topPriority!=0><span>[Top]</span></#if>${post.title!}</a>
        </p>

        <!-- Post Excerpt -->
        <p class="post_entry-excerpt">
            ${post.summary!}
            &nbsp;&nbsp;&nbsp;
            <span>
                <a href="${context!}/archives/${post.url}" target="_self">阅读全文</a>
            </span>
        </p>

        <!-- Post Tags -->
        <ul class="post_entry-tags-list">
            <#if post.tags??>
                <#list post.tags as tag>
                    <li class="post_entry-tags-list-item">
                        <a class="post_entry-tags-list-link" href="${context!}/tags/${tag.slugName}/">${tag.name}</a>
                    </li>
                </#list>
            </#if>
        </ul>
    </div>

    <!-- Post_entry Footer -->
    <div class="post_entry-footer">
        <div class="post_entry-footer-border"></div>
        <div class="post_entry-footer-info">
            <div class="post_entry-footer-date">
                ${post.createTime?string("MM月 dd,yyyy")}
            </div>
            <div class="post_entry-footer-comment">
            </div>
        </div>
    </div>
</div>
</#list>