<div>
    <#if hasPrev>
        <a id="loadPrev" href="${prevPageLink!''}">&lt;&lt;&lt;</a>
    <#else>
        <span id="loadPrev">Previous page</span>
    </#if>

    <#if hasNext>
        <a id="loadNext" href="${nextPageLink!''}" data-default-page-size="${defaultPageSize!3}">Next page&gt;&gt;&gt;</a>
    <#else>
        <span>>>></span>
    </#if>
</div>