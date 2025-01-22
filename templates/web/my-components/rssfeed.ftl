<div class="inner">
    <h2 class="major">${contentModel.title_s}</h2>
    <p>${contentModel.snippet_t}</p>
    <section class="features">
        <#list feed as entry>
            <article>
                <#if entry.img??>
                    <a href="${entry.link}" class="image">
                        <img src="${entry.img}" alt="" />
                    </a>
                </#if>
                <h3 class="major">${entry.title}</h3>
                <p>${entry.description}</p>
                <a href="${entry.link}" class="special">Learn more</a>
            </article>
        </#list>
    </section>
    <ul class="actions">
        <li><a href="#" class="button">Browse All</a></li>
    </ul>
</div>
