RecipeApp::Application.routes.draw do

root :to => 'recipes#index'

  # Routes for the Comment resource:
  # CREATE
  get '/comments/new', controller: 'comments', action: 'new', as: 'new_comment'
  post '/comments', controller: 'comments', action: 'create'

  # READ
  get '/comments', controller: 'comments', action: 'index', as: 'comments'
  get '/comments/:id', controller: 'comments', action: 'show', as: 'comment'

  # UPDATE
  get '/comments/:id/edit', controller: 'comments', action: 'edit', as: 'edit_comment'
  put '/comments/:id', controller: 'comments', action: 'update'

  # DELETE
  delete '/comments/:id', controller: 'comments', action: 'destroy'
  #------------------------------

  # Routes for the Ingredient resource:
  # CREATE
  get '/ingredients/new', controller: 'ingredients', action: 'new', as: 'new_ingredient'
  post '/ingredients', controller: 'ingredients', action: 'create'

  # READ
  get '/ingredients', controller: 'ingredients', action: 'index', as: 'ingredients'
  get '/ingredients/:id', controller: 'ingredients', action: 'show', as: 'ingredient'

  # UPDATE
  get '/ingredients/:id/edit', controller: 'ingredients', action: 'edit', as: 'edit_ingredient'
  put '/ingredients/:id', controller: 'ingredients', action: 'update'

  # DELETE
  delete '/ingredients/:id', controller: 'ingredients', action: 'destroy'
  #------------------------------

#Session routes
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get '/logout', controller: 'sessions', action: 'destroy'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get '/recipes/new', controller: 'recipes', action: 'new', as: 'new_recipe'
  post '/recipes', controller: 'recipes', action: 'create'

  # READ
  get '/recipes', controller: 'recipes', action: 'index', as: 'recipes'
  get '/recipes/:id', controller: 'recipes', action: 'show', as: 'recipe'

  # UPDATE
  get '/recipes/:id/edit', controller: 'recipes', action: 'edit', as: 'edit_recipe'
  put '/recipes/:id', controller: 'recipes', action: 'update'

  # DELETE
  delete '/recipes/:id', controller: 'recipes', action: 'destroy'
  #------------------------------

  end
