<#include "header.ftl">

    <#include "menu.ftl">

    <div class="document-${content.type!}">
        <div class="page-header">
            <h1>${content.title}</h1>
        </div>
        <div class="date"><em>${content.date?string("yyyy-MM-dd")}</em></div>
        <div class="doc-body">${content.body}</div>

    </div>
    <hr />
    <!-- Rating widget -->
    <div class="rw-ui-container"></div>

<#include "footer.ftl">
