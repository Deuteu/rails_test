Rails.application.routes.draw do
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

  resources :data

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/private' => 'private_pages#private'
end
