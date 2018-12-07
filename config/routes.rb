Rails.application.routes.draw do
  
  
  get 'com/login' => 'com#login'
  post 'com/login' => 'com#login'
  get 'com/signup' => 'com#signup'
  get 'com/adminsignup' => 'com#adminsignup'
  get 'com/home' => 'com#home'
  post 'userdetail/signup' => 'userdetail#signup'
  post 'userdetail/logout' => 'userdetail#logout'
  post 'userdetail/login' => 'userdetail#login'
  get 'userdetail/signup' => 'userdetail#signup'
  get 'admindetail/signup' => 'admindetail#signup'
  get 'userdetail/logout' => 'userdetail#logout'
  post 'userdetail/logout' => 'userdetail#logout'
  get 'home/products' => 'home#products'
  get 'home/cart' => 'home#cart'
  post 'home/cart' => 'home#cart'
  get 'home/home' => 'home#home'
  get 'home/edit' => 'home#edit'
  get 'admin/upload' => 'admin#upload'
  get 'admin/type' => 'admin#type'
  post 'admin/type' => 'admin#type'
  post 'admin/uptype' => 'admin#uptype'
  get 'admin/main' => 'admin#main'
  get 'admin/insert' => 'admin#insert'
  get 'admin/logout' => 'admin#logout'
  get 'admindetail/signup' => 'admindetail#signup'
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
