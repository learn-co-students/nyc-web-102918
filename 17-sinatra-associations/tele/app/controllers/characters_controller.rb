class CharactersController < ApplicationController

  # CRUD
  # HTTP Verbs

  # Index
  get '/characters' do
    # Model
    @characters = Character.all
    # View
    erb :"character/index"
  end

  # NEW form
  get '/characters/new' do
    # model
    @shows = Show.all
    #view
    erb :"character/new"
  end

  # Show
  get '/characters/:id' do
    #model
    @character = Character.find(params[:id])
    # response // view
    erb :"character/show"
  end

  # CreateCharacters
  post '/characters' do
    @character = Character.create(params)
    redirect "/character/#{@character.id}"
  end

  # EDIT form
  get '/characters/:id/edit' do
    #model
    @character = Character.find(params[:id])
    @shows = Show.all
    #view // response
    erb :"character/edit"
  end

  # UPDATE
  patch '/characters/:id' do
    @character = Character.find(params[:id])
    @character.update(name: params[:name], role: params[:role], show_id: params[:show_id])
    redirect "/characters/#{@character.id}"
  end


  # Delete


end
