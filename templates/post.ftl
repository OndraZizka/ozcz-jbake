<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
        <h1>${content.title} - Ondřej Žižka</h1>
	</div>

	<div class="date"><em>${content.date?string("yyyy-MM-dd")}</em></div>

	<div class="doc-body">${content.body}</div>

	<hr />

<#include "footer.ftl">
