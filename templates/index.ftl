<#setting url_escaping_charset='UTF-8'><#-- JBake issue #495 -->

<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>Recent posts</h1>
	</div>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h3>${post.title}</h3></a>

  			<div class="date"><em>${post.date?string("yyyy-MM-dd")}</em></div>

  			<div class="doc-body">${post.body}</div>
  		</#if>
  	</#list>

	<hr />

	<!--
	<div>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</div>
	-->

<#include "footer.ftl">
