select distinct to_hex(cast(md5(headline.kicker) as bytes)) as article_type_id, headline.kicker as article_type
from `crack-will-422608-j1.GroupProject.article`
