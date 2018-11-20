# sinatra-mvc-intro

# Goals
- How and why we use the MVC pattern
M: Model - Interacts with Database
V: View - Front end - HTML - User will see
C: Controller - Go between

- How Sinatra serves up data in response to web requests
  receives a requests
   process
   send back a response

- How CRUD actions map to Restful Routing
  - REpresentational State Transfer


## Deliverables



Create
Read
Update
Delete

HTTP VERBS/methods
GET -- READ
POST // send data-- CREATE
PUT / PATCH -- Update
DELETE - Delete

- For each deliverable what is the route?

  - view all books
  # Index
  get /books
    www.awesomeo.com/books


  - view information on an individual book
  # Show
  get /books/id
  www.awesomeo.com/books/id

  - create a new book
  # NEW
  get /books/new
  form to take user input for book


  # CREATE
  ACTUALLY make the record in my database
  POST '/books'

  - edit an existing book
  # EDIT
  form to take in user input
  get '/books/id/edit'

  # UPDATE
  user hits submit
  patch '/books/id'

  # Delete
  - delete an existing book
  delete /books/id




## SWBATs

* Explain the Model View Controller \(MVC\) pattern and give an example
* Explain how web frameworks \(like Sinatra\) use the MVC pattern and why
* Define 'convention over configuration'
* Implement one model that inherit from ActiveRecord
* Implement one controller to route and process requests
  * Demonstrate how the params hash changes and where the data comes from
* Implement ERB template and get it to render data from controller and model
* Practice file structure in Sinatra
* Identify the connection between REST and CRUD


### MVC Architecture

In a typical application you will find these three fundamental parts:

* Data \(Model\)

  An interface to view and modify the data

* \(View\)

  Operations that can be performed on the data

* \(Controller\)

The MVC pattern, in a nutshell, is this:

* The model represents the data, and does nothing else. The model does NOT depend on the controller or the view.
* The view displays the data through the controller, and sends user actions \(e.g. button clicks\) to the controller. The view is independent of both the model and the controller.
* The controller provides model data to the view, and interprets user actions such as button clicks. The controller depends on the view and the model.

Rule 1 is the golden rule of MVC:

The model represents the data, and does nothing else. The model does NOT depend on the controller or the view. In other words, _THE MODEL DOES NOT INTERACT WITH THE VIEW, AND THE CONTROLLER DOES ALL THE_ WORK_!_

_Note: an easy analogy to help students with this rule is to think of your MVC app as a restaurant. The model is the food being made in the kitchen, this is the_ meat _of the experience/app. The controller is the restaurant's staff, they handle the experience, prepare the food, and are your first contact if you need anything. The view is you, and your experience. You do not see inside the kitchen, nor do you have visibility on what happens to give you the experience you get. If you want more information, you can always talk to the staff, but they have rules about how much or how little you get to do or see._


* security and access control
* logging
* giving specific users specific content while making views less complex

![](/assets/m2_sinatra_request.jpg)

### CRUD, URLs, and REST

Give an introduction of RESTful Routing and how it connects to CRUD. This diagram will prove helpful:

![](/assets/m2_sinatra_crud.jpg)

Talk about how each route specifically maps to a particular resource/model, and can also represent a "method" being passed to that resource's controller. This allows each action on each resource to be unique. Just like CRUD offers both structure and consistency through its rules, REST does the same. Let the students see how `GET`, `PUT`, `POST`/`PATCH`, and `DELETE` map to "Read", "Create", "Update", and "Delete" respectively.

![](/assets/m2_sinatra_rest.png)

_Note: One thing that helps justify why things are the way they are, is that REST methods try their best to minimize the number of URLs but maximizing functionality. This is why we overload on the same URLs._

It's not necessary that all of this functionality exists, we just choose to expose which things we find important/want our users to be able to do. Reiterate that web requests are stateless, which means that at the default, there is no relationship between any two requests to the server.

Controller:

* Params in requests

  ![](/assets/m2_sinatra_routing_code.jpg)

* Nested erb naming \(with directories\)


View:

* `<%= %>` vs `<% %>`
