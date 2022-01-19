<#include "template/layout.ftl">
<#include "template/common/empty.ftl">
<@layout title="文章分类" type="categories" top_background_img="${settings.top_categories_background_img}" >
    <@categoryTag  method="list">
        <#if categories?? && categories?size gt 0>
            <#list categories as category>
                <a class="by_category hvr-float-shadow" href="${category.fullPath!}"
                   title="${category.name!}"
                   data-num="${category.postCount!}"
                >
                    ${category.name!}
                    <span>${category.postCount!}</span>
                </a>
            </#list>
        <#else>
            <@empty showBg = false/>
        </#if>
    </@categoryTag >

    <div class="by_category_echarts">
        <div id="chart"></div>
    </div>
</@layout>
