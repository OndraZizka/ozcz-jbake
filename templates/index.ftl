<#setting url_escaping_charset='UTF-8'><#-- JBake issue #495 -->

<#assign photos>
DSC_0005.jpg
DSC_0008.jpg
DSC_0013.jpg
DSC_0020.jpg
DSC_0043_1.jpg
DSC_0043.jpg
DSC_0062b.jpg
DSC_0062.jpg
DSC_0062-PANO.jpg
DSC_0066.jpg
DSC_0068.jpg
DSC_0075-PANO.jpg
DSC_0085-PANO.jpg
DSC_0086-PANO.jpg
DSC_0091-PANO.jpg
DSC_0096.jpg
DSC_0097.jpg
DSC_0099.jpg
DSC_0133.jpg
DSC_0154-PANO.jpg
DSC_0164-PANO.jpg
DSC_0174.jpg
DSC_0178.jpg
DSC_0190.jpg
DSC_0197-PANO.jpg
DSC_0216-PANO.jpg
DSC_0354.jpg
DSC_0375-PANO.jpg
DSC_0391-PANO.jpg
DSC1_0106.jpg
DSC1_0289.jpg
DSC1_0375.jpg
DSC1_0498.jpg
DSC4_0782.jpg
DSC4_0846.jpg
DSC4_1068.jpg
DSC4_1105.jpg
DSC4_1551.jpg
IMAG0112.jpg
IMAG0127.jpg
IMAG0456.jpg
IMAG0478.jpg
IMAG1100.jpg
IMAG1302.jpg
IMAG1403.jpg
IMAG1417.jpg
IMAG3009.jpg
IMAG3644.jpg
IMAG3655.jpg
IMAG4346.jpg
IMAG4554.jpg
IMAG4555.jpg
IMAG4573.jpg
IMAG4776.jpg
IMAG4802.jpg
IMAG5583.jpg
IMAG6409.jpg
Photo-2017-05-27-15-45-46_4318.jpg
</#assign>
<#assign photos = photos?split('\\n', 'rmc') >
<script type="text/javascript">
    var photos = [ <#list photos as photo> '${photo}', </#list> ];
</script>
<#assign nextRandom = .now?string["HHmmssSSS"]?number>

<#include "header.ftl">

	<#include "menu.ftl">

    <div id="banner"></div>

	<div class="page-header">
		<h2>Recent posts</h2>
	</div>


    <#assign MAX_POSTS = 30>
	<#list posts[0..*MAX_POSTS]>
        <div class="document-list recent">
            <#items as post>
            <#if (post.status == "published")>
                <div class="document post">
                    <div class="date"><span>${post.date?string("yyyy-MM-dd")}</span></div>

                    <a href="${post.uri}"><h3>${post.title}</h3></a>

                    <div class="doc-body">
                        ${post.body}
                    </div>
                    ... <a href="${post.uri}"> read more &rarr;</a>
                </div>
                <div class="banner post-separator" style="background-image: url(photos/panoramas/${photos[nextRandom % photos?size]});"></div>
                <#assign nextRandom = nextRandom * 13 % 104729>
            </#if>
            </#items>
        </div>

  	</#list>

	<div>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</div>

<#include "footer.ftl">
