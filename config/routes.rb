Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/admin'

  get 'mesas/cargar'
  
  get 'pages/validar'
  
  get 'pages/reporte'
  
  get 'pages/total_mesa'
  get 'pages/total_centro'
  get 'pages/ver_centro'
  get 'pages/total_parroquia'
  get 'pages/ver_parroquia'
  get 'pages/total_parroquia'
   get 'pages/ver_municipio'
  get 'pages/total_municipio'
  

  get 'centros/update_parroquias', as: 'update_parroquias'

  get 'mesas/check_centro', as: 'check_centro', :controller => "mesas", :action => "check_centro"
  #check_centro "mesas/check_centro", :controller => "mesas", :action => "check_centro"
  #map.resources :mesas

  devise_for :users
  resources :mesas
  resources :centros
  resources :parroquia
  resources :municipios
  resources :users

  root 'pages#home'
  
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
