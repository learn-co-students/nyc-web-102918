# Intro to ORMs (Object Relational Mappers)

## SWBATs

* Define Object Relational Mapper (ORM)
* Distinguish between ORM and SQL
* Demonstrate that ORMs are the pattern connecting scripting languages and databases
* Explain how the `sqlite` gem works as a driver or wrapper around SQL
* Implement HEREDOCs to be saved in variables to be executed by SQL driver
* Perform persistent CRUD actions on two separate models

## Lecture Notes

1. Books and Authors where each book has a single author. Books should have a title

  authors ----< books

  authors
  -------
  id | name              
  1  | "Agatha Christie"
  2  | "Stephen King"
  3  | "Dr. Seuss"

  books (belongs to an author)
  -----
  id | title                      | author_id
  1  | "And Then There Were None" | 1
  2  | "Pet Cemetery"             | 2
  3  | "The Lorax"                | 3



  Q: Write the SQL to find all books written by a certain author given that author's id

  ```SQL
  SELECT title FROM books WHERE author_id = 3

  SELECT title
  FROM books
  JOIN authors
  ON authors.id = books.author_id
  WHERE authors.name = "Dr. Seuss"
  ```

2. Books and Authors where each book can have one or MULTIPLE authors. Books should have a title and authors should have a name.

  - What type of relationship is this?
    - many to many

    authors
    -------
    id | name             
    1  | "Agatha Christie"
    2  | "Stephen King"
    3  | "Dr. Seuss"

    authors_books <= If the name makes no sense at all, we just shove them together
    (the third class, our Nest)
    -------------
    id | book_id | author_id
    1  | 1       | 1
    2  | 4       | 1
    3  | 2       | 2
    4  | 3       | 3

    books (belongs to an author)
    -----
    id | title                      
    1  | "And Then There Were None"
    2  | "Pet Cemetery"             
    3  | "The Lorax"                
    4  | "Harry Potter"             

  Q. Write the SQL to find all books written by certain author given their name

  ``` SQL
  SELECT *
  FROM books
  JOIN authors_books
  ON books.id = authors_books.book_id
  JOIN authors
  ON authors.id = authors_books.author_id
  WHERE authors.name = "Dr. Seuss"
  ```

3. Squirrels have Nests in Trees -- Build table

  ```
  squirrels
  id |  name
  1     'chipper'          
  2     'alvin'   
  3     'theo'                 
  4     'simon'            

  nests
  id |  squirrel_id | tree_id
  1     1             1
  2     2             1
  3     3             2
  4     4             1
  4     4             2

  trees
  id |  name
  1     apple tree
  2     christmas tree
  3     old tree
  ```

Q: Write the SQL to find all Squirrels in a "christmas tree"


```SQL

```


## Object Relational Mapper (ORM)

ruby | ORM | SQL/database

### CRUD REVIEW

What are the four ways we can interact with Data?

Create
CREATE TABLE, INSERT INTO
              Book.new

Read
SELECT
b1.title, Book.all.select

Update
UPDATE
b1.title = "New Title"

Delete
DROP TABLE, DELETE FROM
@@all.clear, .pop, .shift / .destroy

### Active Record Pattern

- each table in our DB should correspond to a ruby class (Model)
  table == model == class
- table is ALWAYS plural and the Model/Class is Singular
  Book => books
  Author => authors
  AuthorsBook => authors_books
- instances of one of those classes are represented as a row in our DB
  Book.new ==> one row in the database
- each column represents an attribute on each instance
  name => name
  id => id (the PRIMARY KEY in the database) will be different from object_id

ActiveRecord is the ORM library someone else built.
Because you don't want to do what I'm about to do.

### How to persist Data?


## Code Walkthrough

- bin/run.rb
- config/environment.rb
- Gemfile
- db/twitter.db
- lib/tweets.rb && lib/tweets_app.rb
- Rake
  - Creating a new rake task - `rake -T`

```
A tweet belongs to a user and has some message content - must have user_id

The belongs_to must have a user_id on it

A user has a username, and has many tweets

A tweet can have many tags and a tag can have many tweets
```

## Review Questions

### CRUD in SQL and Ruby

* What are the 4 ways we can interact with data?
* How do we write these in SQL?
* How do we want to write these in Ruby?
* How do we map these SQL applications to Ruby?

### ORM Pattern

* each table in the db should correspond to our ruby class (models)
* each row represents an instance in the database
* each column represents an attribute for our instances
* why do we need a database? persistence

### One to Many Relationship in SQL

* Foreign key versus primary key
* Which table is the foreign key placed on? (has many or belongs to)
* Show the pain of not putting the foreign key on the child
* Find all books written by a certain author by ID

### Many to Many Relationship in SQL

* how do we implement an author having many books and a book having many authors
* join table having two foreign keys
* write the sql to find all books written by a certain author given their name
* highlight order of writing sql syntax
* another example with tweets and tags

### Selecting and Inserting

* Working with SQLite3 Gem in the console
* class with attributes and initialize method
* write all class method with db execute call
* map results from select * to create new tweet instances
* mass assignment
* adding IDs to mapped instance

### Saving and Updating

* writing the save method
* parameterized queries and database security
* what's the difference between calling new and create?
