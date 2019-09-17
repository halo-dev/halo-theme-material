<#macro layout title,keywords,description,canonical>
<!DOCTYPE html>
<html style="display: none;" lang="zh">
    <#include "_partial/head.ftl">
    <@head title="${title}" keywords="${keywords}" description="${description}" canonical="${canonical}"></@head>

    <body id="scheme-${settings.scheme!'Paradox'}" class="lazy">
        <div class="material-layout  mdl-js-layout has-drawer is-upgraded">
            <#if (settings.scheme!'Paradox') == "Isolation">
                <!-- Isolation Header -->
                <#include "_partial/isolate_info.ftl">
            </#if>

            <!-- Main Container -->
            <main class="material-layout__content" id="main">

                <!-- Top Anchor -->
                <div id="top"></div>

                <#if (settings.scheme!'Paradox') == "Paradox">
                <!-- Hamburger Button -->
                <button class="MD-burger-icon sidebar-toggle">
                    <span id="MD-burger-id" class="MD-burger-layer"></span>
                </button>
                </#if>

                <#nested />

                <#if (settings.scheme!'Paradox') == "Paradox">
                    <#include "_partial/sidebar.ftl">
                    <!-- Footer Top Button -->
                    <#include "_partial/footer_top.ftl">
                </#if>

                <#include "_partial/footer.ftl">

                <#include "_partial/import_js.ftl">
            </main>
        </div>
    </body>
</html>
</#macro>