<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>Tags Index</h1>
	</div>

    <#list tagsMap>
    <ul>
    <#items as tagName, tagCount>
        <li><a href="${config.site_baseUrl}/${config.tag_path}/${tagName}.html">${tagName}</a> (${tagCount})</li>
    </#items>
    </ul>
    <#else>
        <p>No tags found.</p>
    </#list>

<#include "footer.ftl">
