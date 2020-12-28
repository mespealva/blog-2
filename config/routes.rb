Rails.application.routes.draw do
  # ================= Profile =============================
  get '/:slug', to:"profiles#show", as: 'profile_path'
  # ================= Resources=============================
  resources :posts
  resources :comments

  # ================= Devise =============================
  
  devise_for :users, controllers: { :registrations => 'users/registrations' }
  devise_for :authors, skip: [:registrations], controllers: { :sessions => 'authors/sessions', :registrations => 'authors/registrations' } 
  as :author do
    get 'authors/edit' => 'authors/registrations#edit', :as => 'edit_author_registration'
    put 'authors' => 'authors/registrations#update', :as => 'author_registration'
  end
  put 'published/:id' => 'posts#published', as: 'published'

  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
