<link rel="stylesheet" href="${static!}/source/css/gallery.min.css">
<body>
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Header -->
        <header id="header">
            <h1>
                <a href="${context!}"><strong>${options.blog_title!}</strong></a> - 图库
            </h1>
            <nav>
                <ul>
                    <li>
                        <a href="#footer" class="icon fa-info-circle">
                            ©&nbsp;${user.nickname!}
                        </a>
                    </li>
                </ul>
            </nav>
        </header>

        <!-- Main -->
        <div id="main">
            <@photoTag method="list">
                <#list photos as photo>
                    <article class="thumb">
                        <a href="${photo.thumbnail}" class="image lazy" data-original="${photo.thumbnail}">
                            <img class="lazy" data-original="${photo.url}" alt="${photo.description}" />
                        </a>
                        <h2>${photo.name}</h2>
                        <p>${photo.takeTime!}</p>
                    </article>
                </#list>
            </@photoTag>
        </div>
        <!-- Footer -->
<#--        <% if(theme.gallery.panel_show === true) { %>-->
<#--        <footer id="footer" class="panel">-->
<#--          <div class="inner split">-->
<#--		  <% if(theme.gallery.left_show === true) { %>-->
<#--            <div>-->
<#--              <section>-->
<#--                <h2><%= theme.gallery.left_title %></h2>-->
<#--                <p><%= theme.gallery.left_info %></p>-->
<#--              </section>-->
<#--              <!-- <p class="copyright">-->
<#--                &copy; Design: <a href="#">Gallery</a>.-->
<#--              </p> &ndash;&gt;-->
<#--            </div>-->
<#--			<% } %>-->
<#--			<% if(theme.gallery.right_show === true) { %>-->
<#--            <div>-->
<#--              <section>-->
<#--                <h2><%= theme.gallery.right_title %></h2>-->
<#--                <form method="post" action="https://formspree.io/<%= theme.sns.email %>">-->
<#--                  <div class="field half first">-->
<#--                    <input type="text" id="Name" name="name" placeholder="Name" />-->
<#--                  </div>-->
<#--                  <div class="field half">-->
<#--                    <input pattern="[a-z,0-9,@,.,-,_]*" type="text" id="Email" name="_replyto" placeholder="Email" />-->
<#--                  </div>-->
<#--                  <div class="field">-->
<#--                    <textarea id="note" name="message" rows="4" placeholder="Message"></textarea>-->
<#--                  </div>-->
<#--                  <ul class="actions">-->
<#--                    <li><input type="submit" value="Send" class="special" /></li>-->
<#--                    <li><input type="reset" value="Reset" /></li>-->
<#--                  </ul>-->
<#--                </form>-->
<#--              </section>-->
<#--            </div>-->
<#--			<% } %>-->
<#--          </div>-->
<#--        </footer>-->
<#--        <% } %>-->

    </div>

    <!-- Scripts -->
    <script src="${static!}/source/js/gallery/gallery.js"></script>
    <script>lsloader.load("lazyload_js","${static!}/source/js/lazyload.min.js", true)</script>

    <script>
        queue.offer(function(){
            $('.lazy').lazyload({
              effect: 'fadeIn',
              event: 'scrollstop'
            });
        })
        <!-- Start Queue -->
        $(document).ready(function(){
            setInterval(function(){
                queue.execNext();
            },200);
        });
    </script>
</body>
