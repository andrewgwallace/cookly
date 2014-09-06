Rails.application.routes.draw do
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
# ___________________________


    # resources :chefs
    # resources :cookbooks
    # resources :recipes

# RAKE ROUTES OUTPUT
# chefs GET    /chefs(.:format)              chefs#index
#               POST   /chefs(.:format)              chefs#create
#      new_chef GET    /chefs/new(.:format)          chefs#new
#     edit_chef GET    /chefs/:id/edit(.:format)     chefs#edit
#          chef GET    /chefs/:id(.:format)          chefs#show
#               PATCH  /chefs/:id(.:format)          chefs#update
#               PUT    /chefs/:id(.:format)          chefs#update
#               DELETE /chefs/:id(.:format)          chefs#destroy
#     cookbooks GET    /cookbooks(.:format)          cookbooks#index
#               POST   /cookbooks(.:format)          cookbooks#create
#  new_cookbook GET    /cookbooks/new(.:format)      cookbooks#new
# edit_cookbook GET    /cookbooks/:id/edit(.:format) cookbooks#edit
#      cookbook GET    /cookbooks/:id(.:format)      cookbooks#show
#               PATCH  /cookbooks/:id(.:format)      cookbooks#update
#               PUT    /cookbooks/:id(.:format)      cookbooks#update
#               DELETE /cookbooks/:id(.:format)      cookbooks#destroy
  #     recipes GET    /recipes(.:format)            recipes#index
  #             POST   /recipes(.:format)            recipes#create
  #  new_recipe GET    /recipes/new(.:format)        recipes#new
  # edit_recipe GET    /recipes/:id/edit(.:format)   recipes#edit
  #      recipe GET    /recipes/:id(.:format)        recipes#show
  #             PATCH  /recipes/:id(.:format)        recipes#update
  #             PUT    /recipes/:id(.:format)        recipes#update
  #             DELETE /recipes/:id(.:format)        recipes#destroy

  # root route
  root to: "home#index"

#--- COOKBOOKS ---

  # display all cookbooks
  get "/cookbooks" => "cookbooks#index"

  # display one cookbook
  get "/cookbooks/:id" => "cookbooks#show", as: :cookbook

  # display the EDIT form for a cookbook
  get "/cookbooks/:id/edit" => "cookbooks#edit", as: :edit_cookbook

  # process an UPDATE or edit to a cookbook record
  patch "/cookbooks/:id" => "cookbooks#update"

  # renders a NEW cookbook form
  # get "/cookbooks/new" => "cookbooks#new"

  # this processes the form input
  post "/cookbooks" => "cookbooks#create"

#--- RECIPES ---

  # post or ADD one or more recipes
  post "/recipes" => "recipes#create"

  # get one RECIPE
  get "/recipes/:id" => "recipes#show", as: :recipe

  # get EDIT form for recipes
  get "/recipes/:id/edit" => "recipes#edit", as: :edit_recipe

  # process form data for UPDATE or edit actions
  patch "/recipes/:id" => "recipes#update"

  #--- CHEFS ---

  # get ALL chefs
  get "/chefs" => "chefs#index"

  # get ONE chef
  get "/chefs/:id" => "chefs#show"

  # show NEW chef form
  get "/chef/new" => "chefs#new"

  # process chef CREATE action from form
  post "/chefs" => "chefs#create"

  # # show LOGIN form
  # get "/chef/login" => "chefs#login"

  # # process login form
  # post "/chef/login" => "chefs#process_login"

end
