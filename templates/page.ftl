<#include "header.ftl">

    <#include "menu.ftl">

    <div class="document document-${content.type!}">
        <div class="page-header">
            <h1>${content.title}</h1>
        </div>
        <div class="date"><span>${content.date?string("yyyy-MM-dd")}</span></div>
        <div class="doc-body">${content.body}</div>

    </div>
    <hr />
    <!-- Rating widget -->
    <div class="rw-ui-container"></div>

<#include "footer.ftl">
