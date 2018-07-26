<?xml version="1.0" encoding="UTF-8"?>

<#-- See https://www.sitemaps.org/protocol.html -->

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<#list published_content as content>
    <url>
        <loc>${config.site_host}/${content.uri}</loc>
        <lastmod>${content.date?string("yyyy-MM-dd")}</lastmod>
    </url>
</#list>
</urlset>

<#-- IDEA offers title but it's not in the standard and Google says  error.
<#if content.title??> <title>${content.title}</title> </#if>
 -->
