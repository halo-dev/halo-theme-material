<!-- Daily pic -->
<div class="mdl-card <#if settings.uiux_card_elevation??>mdl-shadow--${settings.uiux_card_elevation!2}dp</#if> daily-pic mdl-cell mdl-cell--8-col index-top-block">

    <!-- Pic & Slogan -->
    <div class="mdl-card__media mdl-color-text--grey-50" style="background-image:url(${settings.daily_pic!'${theme_base!}/source/img/daily_pic.png'})">
        <p class="index-top-block-slogan"><a href="${blog_url!}">
            ${settings.uiux_slogan!'Hi,nice to meet you'}
        </a></p>
    </div>

    <!-- Avatar & Name -->
    <div class="mdl-card__supporting-text meta mdl-color-text--grey-600">
        <!-- Author Avatar -->
        <div id="author-avatar">
            <img src="${user.avatar!'${theme_base!}/source/img/avatar.png'}" width="32px" height="32px" alt="avatar">
        </div>
        <div>
            <strong>${user.nickname!}</strong>
        </div>
    </div>
</div>
