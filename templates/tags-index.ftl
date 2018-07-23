<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>Tags Index</h1>
	</div>

    <#list tags>
        <ul class="posts">
        <#items as tag>
            <#-- My JBake branch tagsMap-templateVar
            <li><a href="${config.site_baseUrl}/${config.tag_path}/${tagName}.html">${tagName}</a> (${tagCount})</li>
            -->
            <li><a href="${config.site_baseUrl}/${config.tag_path}/${tag.name}">${tag.name}</a> (${tag.tagged_posts?size})</li>
        </#items>
        </ul>
    <#else>
        <p>No tags found.</p>
    </#list>



<#include "footer.ftl">


