Rails.application.routes.draw do
  # Routes for the Character resource:
  # CREATE
  get '/new_character' => 'characters#new'
  get '/create_character' => 'characters#create'

  # READ
  get '/characters' => 'characters#index'
  get '/characters/:id' => 'characters#show'

  # UPDATE
  get '/characters/:id/edit' => 'characters#edit'
  get '/characters/:id/update' => 'characters#update'

  # DELETE
  get '/characters/:id/destroy' => 'characters#destroy'
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get '/pokemon' => 'application#index'
  get '/new_type' => 'types#new'
  get '/create_type' => 'types#create'

  # READ
  get '/types' => 'types#index'
  get '/types/:id' => 'types#show'

  # UPDATE
  get '/types/:id/edit' => 'types#edit'
  get '/types/:id/update' => 'types#update'

  # DELETE
  get '/types/:id/destroy' => 'types#destroy'
  #------------------------------

  # Routes for the Pokemontype resource:
  # CREATE
  get '/new_pokemontype' => 'pokemontypes#new'
  get '/create_pokemontype' => 'pokemontypes#create'

  # READ
  get '/pokemontypes' => 'pokemontypes#index'
  get '/pokemontypes/:id' => 'pokemontypes#show'

  # UPDATE
  get '/pokemontypes/:id/edit' => 'pokemontypes#edit'
  get '/pokemontypes/:id/update' => 'pokemontypes#update'

  # DELETE
  get '/pokemontypes/:id/destroy' => 'pokemontypes#destroy'
  #------------------------------

  # Routes for the Pokemon resource:
  # CREATE
  get '/new_pokemon' => 'pokemons#new'
  get '/create_pokemon' => 'pokemons#create'

  # READ
  get '/pokemons' => 'pokemons#index'
  get '/pokemons/:id' => 'pokemons#show'

  # UPDATE
  get '/pokemons/:id/edit' => 'pokemons#edit'
  get '/pokemons/:id/update' => 'pokemons#update'

  # DELETE
  get '/pokemons/:id/destroy' => 'pokemons#destroy'
  #------------------------------

  # Routes for the Pokeball resource:
  # CREATE
  get '/new_pokeball' => 'pokeballs#new'
  get '/create_pokeball' => 'pokeballs#create'

  # READ
  get '/pokeballs' => 'pokeballs#index'
  get '/pokeballs/:id' => 'pokeballs#show'

  # UPDATE
  get '/pokeballs/:id/edit' => 'pokeballs#edit'
  get '/pokeballs/:id/update' => 'pokeballs#update'

  # DELETE
  get '/pokeballs/:id/destroy' => 'pokeballs#destroy'
  #------------------------------

  # Routes for the Trainer resource:
  # CREATE
  get '/new_trainer' => 'trainers#new'
  get '/create_trainer' => 'trainers#create'

  # READ
  get '/trainers' => 'trainers#index'
  get '/trainers/:id' => 'trainers#show'

  # UPDATE
  get '/trainers/:id/edit' => 'trainers#edit'
  get '/trainers/:id/update' => 'trainers#update'

  # DELETE
  get '/trainers/:id/destroy' => 'trainers#destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
