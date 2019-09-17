<script>lsloader.load("np_js","${static!}/source/js/nprogress.js", true)</script>

<script type="text/ls-javascript" id="NProgress-script">
    NProgress.configure({
        showSpinner: true
    });
    NProgress.start();
    $('#nprogress .bar').css({
        'background': '${settings.uiux_nprogress_color!"#29d"}'
    });
    $('#nprogress .peg').css({
        'box-shadow': '0 0 10px ${settings.uiux_nprogress_color!'#29d'}, 0 0 15px ${settings.uiux_nprogress_color!'#29d'}'
    });
    $('#nprogress .spinner-icon').css({
        'border-top-color': '${settings.uiux_nprogress_color!"#29d"}',
        'border-left-color': '${settings.uiux_nprogress_color!"#29d"}'
    });
    setTimeout(function() {
        NProgress.done();
        $('.fade').removeClass('out');
    }, ${settings.uiux_nprogress_buffer!'800'});
</script>
