StudiPoolManagementSystem::Application.routes.draw do
   
  match 'working_place/:id' => 'working_places#show', :as => :working_place, :via => :get

  match 'working_places' => 'working_places#index', :as => :working_places, :via => :get

  match 'working_place/:id/:day' => 'working_places#show', :as => :working_place_at_day, :via => :get

  match 'working_place/:id/time_slot/new' => 'time_slots#new', :as => :working_place_new_time_slot, :via => :get
  
  match 'working_place/:id/time_slot/create' => 'time_slots#create', :as => :time_slots, :via => :post

  match 'welcome/index' => 'welcome#index', :as => :welcome

  #resources :working_places do
  #  resource :time_slot
  #end

  #get "time_slot/new"
  #get "working_places/show"

  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
