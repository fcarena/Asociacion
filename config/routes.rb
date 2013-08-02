CooperativaV1::Application.routes.draw do

  get "intermedio/intermedio_prestamos"

  get "intermedio/intermedio_aportes"

 get "logout" => "sessions#destroy", :as => "logout"
 get "login" => "sessions#new", :as => "login"
 get "signup" => "users#new", :as => "signup"
 resources :users
 resources :sessions


 root :to => "users#index"

  resources :departaments


  resources :loan_details


  resources :aportes


  resources :prestamos


  resources :socios
  match 'mostrar_aportes' => 'aportes#mostrar_aportes', :as => :mostrar_aportes
  match 'mostrarprestamos' => 'prestamos#mostrar_prestamos', :as => :mostrar_prestamos
  match 'mostrarpendientes' => 'loan_details#mostrar_cuotas_pendientes', :as =>:mostrarpendientes
  match 'mostrarpagadas' => 'loan_details#mostrar_cuotas_pagadas', :as =>:mostrarpagadas
  match 'refinanciar'=> 'loan_details#refinanciar', :as =>:refinanciar
  match 'mostrar_aportes1' => 'intermedios#intermedio_aportes', :as => :intermedio_mostrar_aportes
  match 'mostrar_prestamo1' => 'intermedios#intermedio_prestamos', :as => :intermedio_mostrar_prestamos
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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  
end
