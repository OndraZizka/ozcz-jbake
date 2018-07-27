<#setting url_escaping_charset='UTF-8'><#-- JBake issue #495 -->

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
                <div class="date"><em>${post.date?string("yyyy-MM-dd")}</em></div>

                <a href="${post.uri}"><h3>${post.title}</h3></a>

                <div class="doc-body">
                    ${post.body}
                </div>
                ... <a href="${post.uri}"> read more &rarr;</a>
            </div>
        	<hr class="post-separator" />
  		</#if>
        </#items>
    </div>
  	</#list>



	<div>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</div>

<#include "footer.ftl">
