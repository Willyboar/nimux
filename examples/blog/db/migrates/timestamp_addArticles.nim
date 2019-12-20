#This is how a DB Migration file will looks

import norm/sqlite

const dbName = "../db/db.sqlite3"


db(dbName, "", "", ""):
  type
    Article* {.dbTable: "article"} = object
      title*: string
      content*: string
      created*: DateTime
      authorId* {.fk: User, onDelete: "CASCADE".}: int64