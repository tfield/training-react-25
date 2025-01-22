<#import "/templates/system/common/crafter.ftl" as crafter />
<div class="inner">
    <a href="#" class="image"><@crafter.img width="303" height="303" src="${contentModel.image_s}" alt="${contentModel.title_t}" $field="image_s"/></a>
    <div class="content">
        <@crafter.h2 class="major" $field="title_t">${contentModel.title_t}</@crafter.h2>
        <@crafter.p $field="snippet_t">
            ${contentModel.snippet_t}
        </@crafter.p>
        <a href="#" class="special">Learn more</a>
    </div>
</div>