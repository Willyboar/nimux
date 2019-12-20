import norm/sqlite

const dbName = "../db/db.sqlite3"


db(dbName, "", "", ""):
  type
    Users* {.dbTable: "users"} = object
      username*: string
      email*: string
      password*: string
      created*: DateTime
      