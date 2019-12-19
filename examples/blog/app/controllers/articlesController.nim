# ----------------------
# articlesController.nim
# ----------------------

proc indexArticles*() = 
  var articles = Article.getMany(limit, offset)
  renderTemplate("articles/index.html", articles) #


proc postArticle*() = 
  #form logic here
  discard

proc createArticle*() =
  #form view here 
  discard

proc editArticle*() = 
  #form view again
  #pass put or patch request and add current values in the fields
  discard

proc viewArticle*() = 
  var article = Article.getOne parseInt(:"id")

proc putArticle*() = 
  discard

proc deleteArticle*() = 
  var article = Article.getOne parseInt(:"id")
  article.delete()