--select multimedia from  `crack-will-422608-j1.GroupProject.test` limit 15



--multimedia table
select To_HEX(CAST(MD5(url) AS BYTES)) as url_id,subtype,type, Url,height,width,crop_name FROM
`crack-will-422608-j1.GroupProject.article`,  UNNEST(multimedia) AS multimedia 





