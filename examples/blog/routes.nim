#routes.nim file example
import nimux


# Root route
root.get("/", indexHome)                             # Root route of the app. "Framework default if empty"

# Users routes
users.get("/users", indexUsers)             # Index of users
users.post("/users", postUser)              # Post a new User in db
users.get("/users/new", createUser)         # Form to create a new User
users.get("/users/:id/edit", editUser)      # Form to edit an User
users.get("/users/:id",viewUser)            # Show a User
users.put("/users/:id", putUser)            # Edit the User in db
users.delete("/users/:id", deleteUser)	    # Delete a User

# Articles routes
articles.get("/articles", indexArticles)             # Index of Articles
articles.post("/articles", postArticle)              # Post a new article in db
articles.get("/articles/new", createArticle)         # Form to create a new article
articles.get("/articles/:id/edit", editArticle)      # Form to edit an article
articles.get("/articles/:id",viewArticle)            # Show an article
articles.put("/articles/:id", putArticle)            # Edit the article in db
articles.delete("/articles/:id", deleteArticle)	     # Delete an article