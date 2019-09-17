<header class="header">
    <div class="header-wrapper">
        <!-- Header Copyright -->
        <div class="header-copyright">
            <div class="header-site">
                ©&nbsp;
                <script type="text/javascript">
                    var fd = new Date();
                    document.write(fd.getFullYear());
                </script>
                &nbsp;${options.blog_title!}
            </div>
            <!--
            I'm glad you use this theme, the development is no so easy, I hope you can keep the copyright.
            It will not impact the appearance and can give developers a lot of support :)

            很高兴您使用该主题，开发不易，希望您可以保留一下版权声明。
            它不会影响美观并可以给开发者很大的支持。 :)
            -->
            <div>
                Powered by <a href="https://halo.run" target="_blank" class="footer-develop-a">Halo</a>
                <br>
                Theme - <a href="https://github.com/halo-dev/halo-theme-material" target="_blank" class="footer-develop-a">Material</a>
            </div>
        </div>

        <!-- Header Title -->
        <span class="header-title header-item">
            <a href="${context!}" title="${options.blog_title!}">
                ${options.blog_title!}
            </a>
        </span>

        <p class="header-slogan header-item">
            ${options.uiux_slogan!'Hi,nice to meet you'}
        </p>

        <!-- Header Nav -->
        <nav class="header-nav header-item">
            <span class="header-nav-item">
                <a href="${context!}" title="Home">
                    <span>主页</span>
                </a>
            </span>

            <!-- Pages  -->
            <@menuTag method="list">
                <#list menus?sort_by("priority") as menu>
                    <span class="header-nav-item">
                        <a href="${menu.url!}" title="${menu.name!}">
                            <span>${menu.name!}</span>
                        </a>
                    </span>
                </#list>
            </@menuTag>
            
        </nav>

        <!-- Header SNS -->
        <#include "isolate-sns_list.ftl">
    </div>
</header>
