Rails.application.routes.draw do
  root 'application#page_vide'
  devise_for :users
  resources :learners
  resources :groups
  resources :products
  resources :providers
  resources :tasks
  resources :lists do
    resources :tasks, :only => [:create, :new, :edit, :update]
  end
  get 'page_vide' => 'application#page_vide'
  put 'remove_group/:id' => 'learners#alonize', as: :alonize
  get 'random'  => "groups#rand_populate"
  get 'page_1' => 'static_pages#page_1'
  get 'page_2' => 'static_pages#page_2'
  get 'users' => 'users#index'
  get 'like' => 'likes#create'
  get "send_news" => "application#newsletter_send"
end
