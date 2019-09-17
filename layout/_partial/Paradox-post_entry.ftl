<#list posts.content as post>
<div class="post_entry-module mdl-card <#if settings.uiux_card_elevation??>mdl-shadow--${settings.uiux_card_elevation!2}dp</#if> mdl-cell mdl-cell--12-col fade out">
    <!-- Post Thumbnail -->
    <#if !(post.thumbnail?? && post.thumbnail!='')>
        <#if !settings.thumbnail_purecolor??>
            <!-- Random Thumbnail -->
            <div class="post_thumbnail-random mdl-card__media mdl-color-text--grey-50">
        <#else>
            <!-- Pure Thumbnail -->
            <div class="post-thumbnail-pure mdl-card__media mdl-color-text--grey-50" style="background-color:${settings.thumbnail_purecolor!} !important">
        </#if>
    <#else>
        <!-- Custom Thumbnail -->
        <div class="post_thumbnail-custom mdl-card__media mdl-color-text--grey-50 lazy" data-original="${post.thumbnail!}">
    </#if>

        <!-- Post Title -->
        <p class="article-headline-p"><a href="${context!}/archives/${post.url!}"><#if post.topPriority?? && post.topPriority!=0><span>[Top]</span></#if>${post.title!}</a></p>
    </div>

    <!-- Post Excerpt -->
    <div class="mdl-color-text--grey-600 mdl-card__supporting-text post_entry-content">
        ${post.summary!}
        &nbsp;&nbsp;&nbsp;
        <span>
            <a href="${context!}/archives/${post.url}" target="_self">阅读全文</a>
        </span>
    </div>
    <!-- Post_entry Info-->
    <div id="post_entry-info">
        <div id="post_entry-left-info" class="mdl-card__supporting-text meta mdl-color-text--grey-600 ">
            <!-- Author Avatar -->
            <div id="author-avatar">
                <img src="${user.avatar!'${static!}/source/img/avatar.png'}" width="44px" height="44px" alt="${user.nickname!}'s avatar">
            </div>
            <div>
                <strong>${user.nickname!}</strong>
                <span>${post.createTime?string("MM月 dd,yyyy")}</span>
            </div>
        </div>
        <div id="post_entry-right-info">
            <#if post.categories??>
              <!-- Category -->
              <span class="post_entry-category">
                  <#list post.categories as cate>
                      <a class="post_category-link" href="${context!}/categories/${cate.slugName}/">${cate.name}</a>
                  </#list>
              </span>
            </#if>

            <!-- Post Views -->
            <span class="post_entry-views">
            </span>
        </div>
    </div>
</div>
</#list>