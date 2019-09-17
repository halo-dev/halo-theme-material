<#if is_index??>
<script type="application/ld+json">
{
    "@context": "http://schema.org",
    "@type": "Website",
    "publisher": {
        "@type": "Organization",
        "name": "${options.blog_title!}",
        "logo": "${settings.high_res_favicon!}"
    },
    "url": "${context!}",
    "image": {
        "@type": "ImageObject",
        "url": "${settings.apple_touch_icon!}"
    },
    "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "${context!}"
    },
    "description": "${options.seo_description!}"
}
</script>
</#if>

<#if is_post??>
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "BlogPosting",
    "mainEntityOfPage": "${context!}/archives/${post.url!}",
    "headline": "${post.title!}",
    "datePublished": "${post.createTime!}",
    "dateModified": "${post.editTime!}",
    "author": {
        "@type": "Person",
        "name": "${user.nickname!}",
        "image": {
            "@type": "ImageObject",
            "url": "${user.avatar!}"
        },
        "description": "${user.description!}"
    },
    "publisher": {
        "@type": "Organization",
        "name": "${options.blog_title!}",
        "logo": {
            "@type":"ImageObject",
            "url": "${settings.high_res_favicon!}"
        }
    },
    "keywords": "${tagWords!}",
    "description": "${post.summary!}",
}
</script>
</#if>
