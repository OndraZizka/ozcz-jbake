
        <!-- Facebook comments -->
        <#if content.uri??>
        <#assign url = content.uri?starts_with(config.site_host)?then(content.uri, config.site_baseUrl + content.uri) >
        <div class="fb-comments" data-href="${url}" data-width="800" data-numposts="5"></div>
        </#if>

    </div>
    <div id="push"></div>

    <div id="pocitadla" class="" style="position: relative; top: -64px; left: 4xp;">
        <!--
        <div class="pocitadlo" id="navrcholu">
            <script src="https://c1.navrcholu.cz/code?site=116753;t=lb14" type="text/javascript"></script><noscript><div><a target="_blank" href="https://navrcholu.cz/"><img src="https://c1.navrcholu.cz/hit?site=116753;t=lb14;ref=;jss=0" width="14" height="14" alt="Statistiky NaVrcholu.cz" style="border:none" /></a></div></noscript>
        </div><!- - Driv: code?site=79008;t=lb14" -->
        <div class="pocitadlo" id="toplist">
            <a target="_blank" href="https://toplist.cz/stat/117144"><script language="JavaScript" type="text/javascript">
                document.write('<img src="https://toplist.cz/count.asp?id=117144&amp;start=806&amp;logo=2&amp;http='
                        +escape(document.referrer)+'&amp;wi='+escape(window.screen.width)+'&he='+escape(window.screen.height)
                        +'&amp;cd='+escape(window.screen.colorDepth)+'" width="36" height="14" border="0" alt="TOPlist statistiky" />');
            </script><noscript><img src="https://toplist.cz/count.asp?id=117144&amp;start=1&amp;logo=2" border="0" alt="TOPlist statistiky" width="36" height="14"/></noscript></a>
        </div>
        <!-- ClustrMaps.com -->
        <div class="pocitadlo" id="clustrmaps">
            <a href="https://www4.clustrmaps.com/user/64952149"><img src="https://www4.clustrmaps.com/stats/maps-no_clusters/ondra.zizka.cz--thumb.jpg" alt="0" border="0" width="180" height="117" /></a>
        </div>
    </div>

</div>

<div id="footer">
    <div class="container">
        <p class="muted credit">
            &copy; 2018
            | Content written in <a href="https://texy.info/en/">Texy!</a>
            | Baked with <a href="http://jbake.org/">JBake ${version}</a>,
              <a href="http://freemarker.apache.org/">FreeMarker</a> and
              <a href="http://getbootstrap.com/">Bootstrap</a>
        </p>
    </div>
</div>

<script src="${content.rootpath!}js/jquery-1.11.1.min.js"></script>
<script src="${content.rootpath!}js/bootstrap.min.js"></script>
<script src="${content.rootpath!}js/prettify.js"></script>

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

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-4584951-4"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-4584951-4');
</script>

<!-- Syntax highlighter -->
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shCore.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushBash.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushCpp.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushCSharp.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushCss.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushDelphi.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushDiff.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushGroovy.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushJava.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushJScript.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushPhp.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushPlain.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushPython.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushRuby.js"></script>
<!--
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushScala.js"></script>
-->
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushSql.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushVb.js"></script>
<script type="text/javascript" src="/syntaxhighlighter3/scripts/shBrushXml.js"></script>
<link type="text/css" rel="stylesheet" href="/syntaxhighlighter3/styles/shCore.css"/>
<link type="text/css" rel="stylesheet" href="/syntaxhighlighter3/styles/shThemeDefault.css"/>
<script type="text/javascript">
    SyntaxHighlighter.config.clipboardSwf = '/syntaxhighlighter3/scripts/clipboard.swf';
    SyntaxHighlighter.all();
</script>

</body>
</html>
