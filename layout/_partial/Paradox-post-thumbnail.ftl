<script type="text/ls-javascript" id="post-thumbnail-script">
    var randomNum = Math.floor(Math.random() * 19 + 1);

    $('.post_thumbnail-random').attr('data-original', '${static!}/source/img/random/material-' + randomNum + '.png');
    $('.post_thumbnail-random').addClass('lazy');
</script>
