Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  root to: 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }

  #, controllers: {registrations: "users/registrations", omniauth_callbacks: 'users/omniauth_callbacks', sessions: "users/sessions", passwords: "users/passwords"}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :designs
  resources :sports
  resources :genders
  resources :styles
  resources :summaries
  resources :texts
  resources :graphics do
    collection do
      put :assign_color
    end
  end
  resources :logos
  resources :decorations do
    collection do
      put :apply_model
    end
    member do
      get :form
      get :graphic_selection
    end
  end
  resources :options do
  end

  resources :colors
  resources :categories
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
