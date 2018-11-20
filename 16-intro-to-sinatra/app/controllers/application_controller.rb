class ApplicationController < Sinatra::Base
  set :views, 'app/views'
  # set :method_override, true

  # TODO create a route to root/home render home
  get '/' do
    "HOME sweet HOME🍪"
  end


  # TODO all books
  # Index page for Books
  get "/books" do
    # Talk to Model
    @books = Book.all
    # send a response to user
    # VIEW
    erb :index
  end


  # NEW book!
  # Show me the form
   get '/books/new' do
     #model???
     #view
     erb :new
   end

  # TODO Individual book
  # SHOW
  get "/books/:id" do
    #Model
    @book = Book.find(params[:id])
    # Sends back a request
    # View
    erb :show
  end


   post '/books' do
     @book = Book.create(params)
     redirect "/books/#{book.id}"
     # erb :show
   end



end
