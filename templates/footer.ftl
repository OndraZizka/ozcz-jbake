
        <#if false> Sharexy.com - Doesn't support HTTPS.
        <div id='shr_723771'><script type='text/javascript'>(function(w) { if (!w.SharexyWidget) { w.SharexyWidget = {};} if (!w.SharexyWidget.Params) { w.SharexyWidget.Params = {}; }
        w.SharexyWidget.Params['723771'] = {'code_id':'723771','publisher_key':'undefined','design':'classic','layout_static':'h','type':'st','mode_float':'','size_float':'55','size_static':'55','buzz':'1',
            'services':['facebook', 'google_plus', 'twitter', 'linkedin', 'reddit', 'buffer', 'pocket', 'print_page'],
            'url':'current','allways_show_ads':'0','show_ads_sharing':'0','show_ads_cursor':'0','bg_float':'1','bg_color':'#ffffff','labels':'','counters':'0', 'counters_float':'0'} })(window);</script>
        <script type='text/javascript' src='https://shuttle.sharexy.com/LoaderLite.js'></script></div><a href='https://sharexy.com/'><img src='https://sharexy.com/statpixel.png' style='border: 0' /></a>
        </#if>


        <div class="donateButton">
            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                <input type="hidden" name="cmd" value="_s-xclick">
                <input type="hidden" name="hosted_button_id" value="J2SY36M3ZW9JL">
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                <img alt="" border="0" src="https://www.paypalobjects.com/cs_CZ/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>


        <!-- AddToAny BEGIN -->
        <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
            <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
            <a class="a2a_button_facebook"></a>
            <a class="a2a_button_twitter"></a>
            <a class="a2a_button_google_plus"></a>
            <a class="a2a_button_google_bookmarks"></a>
            <a class="a2a_button_google_classroom"></a>
            <a class="a2a_button_linkedin"></a>
            <a class="a2a_button_reddit"></a>
            <a class="a2a_button_buffer"></a>
            <a class="a2a_button_trello"></a>
            <a class="a2a_button_slashdot"></a>
            <a class="a2a_button_hacker_news"></a>
            <a class="a2a_button_dzone"></a>
            <a class="a2a_button_pinterest"></a>
            <a class="a2a_button_vk"></a>
            <a class="a2a_button_digg"></a>
            <a class="a2a_button_copy_link"></a>
            <a class="a2a_button_pocket"></a>
        </div>
        <script>
            var a2a_config = a2a_config || {};
            a2a_config.linkname = "Ondřej Žižka";
            a2a_config.linkurl = "https://www.zizka.ch/";
            a2a_config.num_services = 18;
        </script>
        <script async src="https://static.addtoany.com/menu/page.js"></script>
        <!-- AddToAny END -->

        <div style="clear: both; height: 1ex;"></div>

        <!-- Facebook comments -->
        <#if content.uri??>
            <#assign url = content.uri?starts_with(config.site_host)?then(content.uri, config.site_baseUrl + content.uri) >
            <div class="fb-comments" data-href="${url}" data-width="900" data-numposts="5"></div>
        </#if>

    </div>
    <div id="push"></div>

    <div id="pocitadla">
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
        <!-- New one.
        <script type='text/javascript' id='clustrmaps' src='//cdn.clustrmaps.com/map_v2.js?cl=5cbf2b&w=300&t=tt&d=C_pONa0RC5iio9jpL5Q-2a6fhvRnD7yKoCQfQahpDdY&co=ffffff&ct=d1d1d1&cmo=499fff&cmn=ffa137'></script>
        -->
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

<!-- Rating widget -->
<script type="text/javascript">(function(d, t, e, m){
    // Async Rating-Widget initialization.
    window.RW_Async_Init = function(){
        RW.init({
            huid: "410403",
            uid: "4a1af2230af675ee80c7fba6b48e80c3",
            source: "website",
            options: {
                "advanced": {
                    "font": {"size": "10px", "type": "droid sans, Helvetica, sans-serif"},
                    "text": {"rateAwful": "Not useful", "ratePoor": "Nah...", "rateAverage": "So-so", "rateGood": "Interesting", "rateExcellent": "Saved my day!", "rateThis": "Was it useful?"}
                },
                "boost": {"rate": 1},
                "style": "oxygen",
                "isDummy": false
            }
        });
        RW.render();
    };
    // Append Rating-Widget JavaScript library.
    var rw, s = d.getElementsByTagName(e)[0], id = "rw-js",
            l = d.location, ck = "Y" + t.getFullYear() +
            "M" + t.getMonth() + "D" + t.getDate(), p = l.protocol,
            f = ((l.search.indexOf("DBG=") > -1) ? "" : ".min"),
            a = ("https:" == p ? "secure." + m + "js/" : "js." + m);
    if (d.getElementById(id)) return;
    rw = d.createElement(e);
    rw.id = id; rw.async = true; rw.type = "text/javascript";
    rw.src = p + "//" + a + "external" + f + ".js?ck=" + ck;
    s.parentNode.insertBefore(rw, s);
}(document, new Date(), "script", "rating-widget.com/"));
</script>


</body>
</html>
