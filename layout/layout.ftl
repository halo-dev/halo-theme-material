<#macro layout title,canonical>
<!DOCTYPE html>
<html style="display: none;" lang="zh">
    <#include "_partial/head.ftl">
    <@head title="${title}" canonical="${canonical}"></@head>

    <body id="scheme-Paradox" class="lazy">
        <div class="material-layout  mdl-js-layout has-drawer is-upgraded">

            <!-- Main Container -->
            <main class="material-layout__content" id="main">

                <!-- Top Anchor -->
                <div id="top"></div>

                <!-- Hamburger Button -->
                <button class="MD-burger-icon sidebar-toggle">
                    <span id="MD-burger-id" class="MD-burger-layer"></span>
                </button>

                <#nested />

                <#include "_partial/sidebar.ftl">
                <!-- Footer Top Button -->
                <#include "_partial/footer_top.ftl">

                <#include "_partial/footer.ftl">

                <#include "_partial/import_js.ftl">
            </main>
        </div>
    </body>
</html>
</#macro>