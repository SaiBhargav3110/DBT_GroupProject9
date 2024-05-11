-- Article count based on published date --Bar chart 
--Article count based on section and subsectionname- Doughnut
--Article count based on article type- chart



SELECT pub_date,section_name,subsection_name,a.article_type as article_type, COUNT(Distinct _id) AS article_count
FROM `dbt_saibhargav3110.fact_article` f 
left JOIN `dbt_saibhargav3110.dim_article_type` a
ON f.article_type_id = a.article_type_id 
group by 1,2,3,4
