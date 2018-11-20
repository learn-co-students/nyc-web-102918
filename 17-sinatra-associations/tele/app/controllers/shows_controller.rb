class ShowsController < ApplicationController



  # CRUD
  # HTTP VERBS GET POST PUT/PATCH DELETE
  # RESTFUL ROUTES

  # index
  get '/shows' do
    #model
    @shows = Show.all
    #response // view
    erb :"shows/index"
  end

  # new
  get '/shows/new' do
    #STRAIGHT TO VIEWS
    erb :"shows/new"
  end

  # show
  get '/shows/:id' do
    @show = Show.find(params[:id])
    erb :"shows/show"
  end

  # create
  post '/shows' do
    @show = Show.create(params)
    redirect "/shows/#{@show.id}"
  end

  # edit
  # update

  # delete

end
