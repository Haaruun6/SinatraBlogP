#!/usr/bin ruby

require 'sqlite3'

# remove sqlite file
if File.exists? "blog.sqlite"
    File.delete("blog.sqlite")
end

db = SQLite3::Database.open('blog.sqlite')

# Create table if it does not exist.
db.execute <<SQL
    CREATE TABLE posts(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title VARCHAR(255),
        body TEXT,
        timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    );
SQL

# Add some dummy posts
db.execute <<SQL
    INSERT INTO posts (title, body)
    VALUES ("Post number one","Lorem ipsum dolor sit bamet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
SQL

db.execute <<SQL
    INSERT INTO posts (title, body)
    VALUES ("My second post", "Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.")
SQL

