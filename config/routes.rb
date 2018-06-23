Rails.application.routes.draw do

  resources :data

  root "static_pages#home"

  devise_for :users, controllers: { sessions: "users/sessions" }
  # Default devise route
  devise_scope :user do
    # get "/users/login(.:format)", to: "devise/sessions#new", as: "new_user_session"
    # post "/users/login(.:format)", to: "devise/sessions#create", as: "user_session"
    # delete "/users/logout(.:format)", to: "devise/sessions#destroy", as: "destroy_user_session"
    # post "/users/password(.:format)", to: "devise/passwords#create", as: "user_password"
    # get "/users/password/new(.:format)", to: "devise/passwords#new", as: "new_user_password"
    # get "/users/password/edit(.:format)", to: "devise/passwords#edit", as: "edit_user_password"
    # patch "/users/password(.:format)", to: "devise/passwords#update"
    # put "/users/password(.:format)", to: "devise/passwords#update"
    # get "/users/register/cancel(.:format)", to: "devise/registrations#cancel", as: "cancel_user_registration"
    # post "/users/register(.:format)", to: "devise/registrations#create", as: "user_registration"
    # get "/users/register/sign_up(.:format)", to: "devise/registrations#new", as: "new_user_registration"
    # get "/users/edit(.:format)", to: "devise/registrations#edit", as: "edit_user_registration"
    # patch "/users(.:format)", to: "devise/registrations#update"
    # put "/users(.:format)", to: "devise/registrations#update"
    # delete "/users/register(.:format)", to: "devise/registrations#destroy"
  end
  devise_scope :user do
    get "login", to: "devise/sessions#new"#, as: "new_user_session"
    post "login", to: "devise/sessions#create"#, as: "user_session"
    delete "logout", to: "devise/sessions#destroy"#, as: "destroy_user_session"
    get "logout", to: "devise/sessions#destroy"
  end

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/private' => 'private_pages#private'

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
