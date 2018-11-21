Intro to Rails

SWBATs

* Use Rails generators to create models and migrations
* Navigate the file structure of a Rails application
* Utilize built-in Rails helpers
* Build controllers, views, models, migrations, and routes in Rails

Questions:

Sinatra: 
What's important?
Understanding MVC and single responsibility
    - Model
        Communicating with the db
        Take information from the server and manipulate (class/instance methods)
    - View
        Showing a page to the user/client
        Receiving information from the user
    - Controller
        Links the model to the view
        RESTful routing - index, new, edit, create, update, delete, show


Rails: 
What's the same?
  MVC pattern
  Params
  Rendering/redirecting
  Models and ActiveRecord
  Views/ERB and forms

What's different?
  `config/routes.rb` holds all information about routes and controller actions become ordinary methods
  If convention is followed, views are automatically found and rendered within the `view` directory

What's new?
  URL helpers
  Rails generators

  Gotchas to explore: authenticity token required in forms (solved with Rails form helpers), params cannot be assigned en masse (i.e. mass assignment)  (solved with strong params)


