SELECT DISTINCT
  to_hex(cast (md5(keyword.name || keyword.value || keyword.rank) as bytes)) AS keyword_id,
  keyword.name AS name,
  keyword.value AS keywordvalue,
  keyword.rank AS ranking,
  keyword.major AS major
FROM 
  `crack-will-422608-j1.GroupProject.article`,
  UNNEST(keywords) AS keyword
