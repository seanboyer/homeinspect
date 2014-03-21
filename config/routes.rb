Homeinspect::Application.routes.draw do
  devise_for :users
  resources :blogs

  #get "pages/faq"
  #get "pages/services"
  #get "pages/complete_inspection"
  #get "pages/pre_offer_inspection"
  #get "pages/home_consultation"
  #get "pages/realtors"
  #get "pages/sellers"
  #get "pages/new_construction"

  match '/faq' => 'pages#faq', via: [:get]
  match '/about' => 'pages#about',  via: [:get]
  match '/services' => 'pages#services',  via: [:get]
  match 'services/complete_inspection' => 'pages#complete_inspection',  via: [:get]
  match 'services/pre_offer_inspection' => 'pages#pre_offer_inspection',  via: [:get]
  match 'services/home_consultation' => 'pages#home_consultation',  via: [:get]
  match 'services/realtors' => 'pages#realtors',  via: [:get]
  match 'services/sellers' => 'pages#sellers',  via: [:get]
  match 'services/new_construction' => 'pages#new_construction',  via: [:get]
  

  resources :contacts do
    member do
      get 'confirmation'
    end
  end

  root to: "pages#home"

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
