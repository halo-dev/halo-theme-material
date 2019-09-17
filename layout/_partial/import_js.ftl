<!-- Import JS File -->
<script>lsloader.load("lazyload_js","${static!}/source/js/lazyload.min.js", true)</script>
<script>lsloader.load("js_js","${static!}/source/js/js.min.js", true)</script>

<#include "../_widget/nprogress.ftl">

<#if settings.other_js_smoothscroll!true>
    <script>lsloader.load("sm_js","${static!}/source/js/smoothscroll.js", true)</script>
</#if>

<#include "footer-option.ftl">

<!-- UC Browser Compatible -->
<script>
	var agent = navigator.userAgent.toLowerCase();
	if(agent.indexOf('ucbrowser')>0) {
		document.write('${static!}/source/css/uc.css');
	   alert('由于 UC 浏览器使用极旧的内核，而本网站使用了一些新的特性。\n为了您能更好的浏览，推荐使用 Chrome 或 Firefox 浏览器。');
	}
</script>

<!-- Import prettify js  -->
<#if settings.prettify_enable!false>
    <#if is_post?? || is_sheet??>
        <script>lsloader.load("prettify_js","${static!}/source/js/prettify.min.js", true)</script>
    </#if>
</#if>

<#if settings.hanabi_enable!false>
    <script>lsloader.load("hanabi","${static!}/source/js/hanabi-browser-bundle.js", true)</script>
</#if>

<!-- Window Load -->
<!-- add class for prettify -->
<script type="text/ls-javascript" id="window-load">
    $(window).on('load', function() {
        // Post_Toc parent position fixed
        $('.post-toc-wrap').parent('.mdl-menu__container').css('position', 'fixed');
    });

    <#if settings.prettify_enable!false>
        <#if is_post?? || is_sheet??>
            $(function() {
                $('pre').addClass('prettyprint linenums').attr('style', 'overflow:auto;');
                prettyPrint();
                })
        </#if>
    </#if>
    <#if settings.hanabi_enable!false>
        HanabiBrowser.start('pre code',${settings.hanabi_line_number?c});
    </#if>
</script>

<!-- MathJax Load-->
<#if settings.other_mathjax!true && (is_post?? || is_sheet??)>
    <#include "../_widget/mathjax.ftl">
</#if>


<!-- Bing Background -->
<#if settings.background_bing!false>
<script type="text/ls-javascript" id="Bing-Background-script">
    queue.offer(function(){
        $('body').attr('data-original', 'https://api.i-meto.com/bing');
    });
</script>
</#if>

<script type="text/ls-javascript" id="lazy-load">
    // Offer LazyLoad
    queue.offer(function(){
        $('.lazy').lazyload({
            effect : 'show'
        });
    });

    // Start Queue
    $(document).ready(function(){
        setInterval(function(){
            queue.execNext();
        },200);
    });
</script>

<!-- Custom Footer -->

<script>
    var copyrightNow = new Date().getFullYear();
    var textContent = document.querySelector('span[year]')

    copyrightSince = ${(options.birthday)?number_to_date?string("yyyy")};
    if (copyrightSince === copyrightNow||copyrightSince === 0000) {
        textContent.textContent = copyrightNow
    } else {
        textContent.textContent = copyrightSince + ' - ' + copyrightNow
    }

    (function(){
        var scriptList = document.querySelectorAll('script[type="text/ls-javascript"]')

        for (var i = 0; i < scriptList.length; ++i) {
            var item = scriptList[i];
            lsloader.runInlineScript(item.id,item.id);
        }
    })()
console.log('\n %c © Material Theme | Version: 1.5.6 | https://github.com/viosey/hexo-theme-material %c \n', 'color:#455a64;background:#e0e0e0;padding:5px 0;border-top-left-radius:5px;border-bottom-left-radius:5px;', 'color:#455a64;background:#e0e0e0;padding:5px 0;border-top-right-radius:5px;border-bottom-right-radius:5px;');
</script>
