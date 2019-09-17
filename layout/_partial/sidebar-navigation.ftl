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
        <a href="${context!}">
            <i class="material-icons sidebar-material-icons">home</i>
            主页
        </a>
    </li>

    <!-- Archives  -->
<#--    <% if(theme.sidebar.archives.use === true) { %>-->
<#--        <li class="dropdown">-->
<#--            <a href="#" class="ripple-effect dropdown-toggle" data-toggle="dropdown">-->
<#--                <% if(theme.sidebar.archives.icon) { %>-->
<#--                    <i class="material-icons sidebar-material-icons"><%= theme.sidebar.archives.icon %></i>-->
<#--                <% } %>-->
<#--                    <%= __('sidebar.archive') %>-->
<#--                <b class="caret"></b>-->
<#--            </a>-->
<#--            <ul class="dropdown-menu">-->
<#--            <li>-->
<#--                <%- list_archives({-->
<#--                    show_count: true,-->
<#--                    amount: 5,-->
<#--                    class: 'sidebar_archives',-->
<#--                    style: 'none',-->
<#--                    separator: '</li><li>'-->
<#--                }) %>-->
<#--            </ul>-->
<#--        </li>-->
<#--        <% if(theme.sidebar.archives.divider === true) { %>-->
<#--            <li class="divider"></li>-->
<#--        <% } %>-->
<#--    <% } %>-->

    <!-- Categories  -->
    <#if settings.other_sidebar_cates!true>
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
                            <a class="sidebar_archives-link" href="${context!}/categories/${cate.slugName}/">${cate.name}<span class="sidebar_archives-count">${cate.postCount!0}</span></a>
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
                <a href="${menu.url!}" title="${menu.name!}">
                    <#if menu.icon?? && menu.icon != ''>
                        <i class="material-icons sidebar-material-icons">${menu.icon}</i>
                    </#if>
                    ${menu.name!}
                </a>
            </li>
        </#list>
    </@menuTag>

    <div class="sidebar-divider"></div>
    <!-- Article Number  -->
    <#if settings.other_sidebar_postcount!true>
        <li>
            <a href="${context!}/archives">
                文章总数
                <@postTag method="count">
                    <span class="sidebar-badge">${count}</span>
                </@postTag>
            </a>
        </li>
    </#if>
</ul>
