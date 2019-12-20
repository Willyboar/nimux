proc getAllArticles() : seq[Articles] =
  withDb:
  	Articles.getAll()


proc getUserArticles(author: User, limit = 100) : seq[Articles] =
  withDb:
      Articles.getMany(100, cond="authorId=?", params=[dbValue user.id])

proc getArticleById(id: DbValue): Article =
    result = Article(created_at: now())
    withDb:
      result.getOne id.i.int