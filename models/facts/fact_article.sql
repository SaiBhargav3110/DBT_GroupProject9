select distinct
    _id,
    abstract,
    web_url,
    lead_paragraph,
    source,
    print_section,
    print_page,
    headline.main,
    to_hex(cast(md5(headline.kicker) as bytes)) as article_type_id,
    to_hex(cast(md5(m.url) as bytes)) as image_url_id,
    to_hex(cast(md5(coalesce(k.name,'') || coalesce(k.value,'') || coalesce(k.rank,'')) as bytes)) as keyword_id,
    pub_date,
    document_type,
    news_desk,
    section_name,
    subsection_name,
    byline.original,
    to_hex(
        cast(md5(coalesce(bp.firstname,'') || coalesce(bp.middlename,'') || coalesce(bp.lastname,'')) as bytes)
    ) as author_id,
    type_of_material,
    word_count
from
    `crack-will-422608-j1.GroupProject.article`,
    unnest(multimedia) m,
    unnest(keywords) k,
    unnest(byline.person) bp
