<ul class="nav sidebar-nav">
    <!-- User dropdown  -->
    <li class="dropdown">
        <ul id="settings-dropdown" class="dropdown-menu">
            <li>
                <a href="mailto:${user.email!}" target="_blank" title="Email Me">
                    <i class="material-icons sidebar-material-icons sidebar-indent-left1pc-element">email</i>
                    Email Me
                </a>
            </li>
        </ul>
    </li>
    <!-- Homepage -->
    <li id="sidebar-first-li">
        <a href="${options.blog_url!}/">
            <i class="material-icons sidebar-material-icons">home</i>
            主页
        </a>
    </li>
    <li class="divider"></li>

    <#if settings.other_sidebar_archives!true>
    <!-- Archives  -->
    <li class="dropdown">
        <a href="#" class="ripple-effect dropdown-toggle" data-toggle="dropdown">
            <i class="material-icons sidebar-material-icons">inbox</i>
            归档
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <@postTag method="archiveMonth">
                <#if archives??>
                    <#list archives?sort_by("year")?reverse as archive>
                        <li>
                            <a class="sidebar_archives-link" href="${options.blog_url!}/archives/${archive.year}/${archive.month}/">${archive.month}月 ${archive.year?c}<span class="sidebar_archives-count">${archive.posts?size}</span></a>
                        </li>
                    </#list>
                </#if>
            </@postTag>
        </ul>
    </li>
    </#if>

    <#if settings.other_sidebar_cates!true>
    <!-- Categories  -->
    <li class="dropdown">
        <a href="#" class="ripple-effect dropdown-toggle" data-toggle="dropdown">
            <i class="material-icons sidebar-material-icons">chrome_reader_mode</i>
            分类
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <@categoryTag method="list">
                <#list categories as cate>
                    <li>
                        <a class="sidebar_archives-link" href="${options.blog_url!}/categories/${cate.slugName}/">${cate.name}<span class="sidebar_archives-count">${cate.postCount!0}</span></a>
                    </li>
                </#list>
            </@categoryTag>
        </ul>
    </li>
    </#if>

    <!-- Pages  -->
    <@menuTag method="list">
        <#list menus?sort_by("priority") as menu>
            <li>
                <a href="${menu.url}" title="${menu.name}">
                    <#if menu.icon!="">
                        <i class="material-icons sidebar-material-icons">${menu.icon}</i>
                    </#if>
                    ${menu.name}
                </a>
            </li>
        </#list>
    </@menuTag>

    <#if settings.other_sidebar_postcount!true>
    <!-- Article Number  -->
    <li>
        <a href="${options.blog_url!}/archives">
            文章总数
            <@postTag method="count">
                <span class="sidebar-badge">${count}</span>
            </@postTag>
        </a>
    </li>
    </#if>
</ul>
