Rails.application.routes.draw do
  
  root to: 'static_pages#home'

  get 'booking', to: 'static_pages#booking'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'pricing', to: 'static_pages#pricing'
  get 'benefits', to: 'static_pages#benefits'
  get 'gallery', to: 'static_pages#gallery'

  get 'static_pages/sign_up'

  resources :appointments
 # get 'appointments/new'
  get 'new_appointment', to: 'appointments#new'
  get 'pre_new_appointment', to: 'appointments#pre_new'
  devise_for :users, :controllers => { registrations: 'registrations' }


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
