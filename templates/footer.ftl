
    <!-- Facebook comments -->
    <div class="fb-comments" data-href="https://www.zizka.ch/about.html" data-width="800" data-numposts="5"></div>

    </div>
    <div id="push"></div>

</div>

<div id="footer">
    <div class="container">
        <p class="muted credit">&copy; 2018 | Mixed with <a href="http://getbootstrap.com/">Bootstrap v3.1.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
    </div>
</div>

<script src="<#if (content.rootpath)??>${content.rootpath}</#if>js/jquery-1.11.1.min.js"></script>
<script src="<#if (content.rootpath)??>${content.rootpath}</#if>js/bootstrap.min.js"></script>
<script src="<#if (content.rootpath)??>${content.rootpath}</#if>js/prettify.js"></script>

<!-- Facebook comments -->
<div id="fb-root"></div>
<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/cs_CZ/sdk.js#xfbml=1&version=v3.0';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

</body>
</html>
