Rails.application.routes.draw do
  resources :books
  # can follow this up with a hash saying only routes we want or except routes we want
  # i.e. resources :books, { :only => [:post] } or resources :books, { :except => [:delete] }
  # Routes for the Movie resource:

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })
          
  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/new", { :controller => "movies", :action => "new" })
  get("/movies/:id", { :controller => "movies", :action => "show" })
  get("movies/:id/edit", { :controller => "movies", :action => "edit"})
  
  # UPDATE
  
  patch("/movies/:id", { :controller => "movies", :action => "update" })
  
  # DELETE
  delete("/movies/:id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
