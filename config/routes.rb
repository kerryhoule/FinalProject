Prosynergy::Application.routes.draw do
  root :to => 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  match "investments" => "home#investments", :via => :get, :as => "investments"
  match "insurance" => "home#insurance", :via => :get, :as => "insurance"
  match "mortgages" => "home#mortgages", :via => :get, :as => "mortgages"
  match "homeequity" => "home#homeequity", :via => :get, :as => "homeequity"
  match "autofinance" => "home#autofinance", :via => :get, :as => "autofinance"
  match "realestate" => "home#realestate", :via => :get, :as => "realestate"
  match "debtconsolidation" => "home#debtconsolidation", :via => :get, :as => "debtconsolidation"
  match "join_us" => "home#join_us", :via => :get, :as => "join_us"
  match "contact_us" => "home#contact_us", :via => :get, :as => "contact_us"
  match "about_us" => "home#about_us", :via => :get, :as => "about_us"
  match "search_results" => "home#search_results", :via => :post, :as => "search_results"

  #resources :contractor_services


  #resources :services


  #resources :invoices


  #resources :customers


  #resources :contractors

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
